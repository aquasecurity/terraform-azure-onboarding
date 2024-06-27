import hashlib
import hmac
import http.client
import json
import ssl
import sys
import time

query = json.loads(sys.stdin.read())
aqua_api_key                     = query.get("aqua_api_key", "")
aqua_api_secret                  = query.get("aqua_api_secret", "")
organization_id                  = query.get("organization_id", "")
aqua_autoconnect_url             = query.get("aqua_autoconnect_url", "").split("//")[1]


def get_signature(aqua_secret, timestamp, path, method, body=''):
    enc = timestamp + method + path + body
    enc_b = bytes(enc, 'utf-8')
    secret = bytes(aqua_secret, 'utf-8')
    sig = hmac.new(secret, enc_b, hashlib.sha256).hexdigest()
    return sig


def get_headers(cspm_key, cspm_method='GET'):
    timestamp = str(int(time.time() * 1000))
    get_signature_internal_path = "/v2/internal_apikeys"
    get_signature_cspm_path = "/v2/keys"
    internal_signature = get_signature(aqua_api_secret, timestamp, get_signature_internal_path, method="GET")

    if cspm_key is not None:
        get_signature_cspm_path += "/" + cspm_key
    signature_cspm_keys = get_signature(aqua_api_secret, timestamp, get_signature_cspm_path, method=cspm_method)

    headers = {
        "X-API-Key": aqua_api_key,
        "X-Authenticate-Api-Key-Signature": internal_signature,
        "X-Register-New-Cspm-Signature": signature_cspm_keys,
        "X-Timestamp": timestamp
    }

    return headers


def get_subscriptions_by_management_group_aqua(_organization_id):

    conn = http.client.HTTPSConnection(aqua_autoconnect_url, context=ssl._create_unverified_context())
    path = (f"/connected-accounts/provider?"
            f"cloud_provider=azure&"
            f"integration_type=auto_discovery&"
            f"organization_id={_organization_id}")
    method = "GET"
    conn.request(method, path, body=None, headers=get_headers(cspm_key=None))

    response = conn.getresponse()
    result = []
    err = None
    if response.status == 200:
        data = response.read().decode("utf-8")
        try:
            data_dict = json.loads(data)
            result = [
                {"name": account["CSPMData"]["name"], "cspm_key": account["CSPMData"]["id"]}
                for account in data_dict["cloud_accounts_data"]
            ]
        except json.JSONDecodeError:
            err = "get_subscriptions_by_management_group_aqua:: Response content is not valid JSON"
    else:
        err = f"get_subscriptions_by_management_group_aqua:: Error: {response.status}, {response.reason}"

    conn.close()

    return result, err


def offboard_subscription(_subscription):

    conn = http.client.HTTPSConnection(aqua_autoconnect_url, context=ssl._create_unverified_context())
    method = "DELETE"
    path = "/discover"
    body = {
        "cloud_accounts": [
            {
                "cspm_key_id": str(_subscription["cspm_key"]),
                "cloud_account_id": _subscription["name"],
            }
        ]
    }
    body_json = json.dumps(body)
    cspm_key = str(_subscription["cspm_key"])
    conn.request(method, path, body=body_json, headers=get_headers(cspm_key, cspm_method=method))

    response = conn.getresponse()

    err = None
    result = None
    if response.status == 200:
        data = response.read().decode("utf-8")
        try:
            result = json.loads(data)
        except json.JSONDecodeError:
            err = "offboard_subscription:: Response content is not valid JSON"
    else:
        err = "offboard_subscription:: Error: " + str(response.status) + " " + response.reason

    conn.close()

    return result, err


def main():
    aqua_connected_subscriptions, err = get_subscriptions_by_management_group_aqua(organization_id)

    management_group_subscriptions = query.get("management_group_subscriptions", "").split(",")

    offboard_subscriptions = []
    onboard_subscriptions = []
    offboard_subscription_results = []
    if not err:
        for subscription in aqua_connected_subscriptions:
            if subscription["name"] not in management_group_subscriptions:
                offboard_subscriptions.append(subscription)

        for subscription in management_group_subscriptions:
            if subscription not in [_subscription["name"] for _subscription in aqua_connected_subscriptions]:
                onboard_subscriptions.append(subscription)

        for subscription in offboard_subscriptions:
            offboard_subscription_result, err = offboard_subscription(subscription)
            offboard_subscription_results.append([offboard_subscription_result, err])

        aqua_connected_subscriptions, err = get_subscriptions_by_management_group_aqua(organization_id)

    output = {
        "aqua_connected_subscriptions": str(aqua_connected_subscriptions),
        "management_group_subscriptions": str(management_group_subscriptions),
        "offboard_subscriptions": str(offboard_subscriptions),
        "offboard_result": str(offboard_subscription_results),
        "onboard_subscriptions": ', '.join(onboard_subscriptions),
        "Error": str(err)
    }

    print(json.dumps(output))


if __name__ == "__main__":
    main()

