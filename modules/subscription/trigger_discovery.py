import time, json, sys, ssl
import hmac, hashlib
import http.client

deployment_method                = "Terraform"
get_signature_cspm_path          = "/v2/keys"
get_signature_internal_path      = "/v2/internal_apikeys"

query = json.loads(sys.stdin.read())
aqua_autoconnect_url             = query.get("aqua_autoconnect_url", "").split("//")[1]
application_id                   = query.get("application_id", "")
directory_id                     = query.get("directory_id", "")
aqua_api_key                     = query.get("aqua_api_key", "")
aqua_api_secret                  = query.get("aqua_api_secret", "")
application_password             = query.get("application_password", "")
subscription_id                  = query.get("subscription_id", "")
subscription_name                = query.get("subscription_name", "")
aqua_cspm_group_id               = query.get("aqua_cspm_group_id", "")
aqua_configuration_id            = query.get("aqua_configuration_id", "")
organization_id                  = query.get("organization_id", "")
is_custom_name_vol_scan          = query.get("is_custom_name_vol_scan", "")
aqua_custom_tags                 = query.get("aqua_custom_tags", "")

aqua_volscan_resource_group_name = query.get("aqua_volscan_resource_group_name", "")
if aqua_volscan_resource_group_name == "aqua-agentless-scanner":
    aqua_volscan_resource_group_name = ""


def get_signature(aqua_secret, timestamp, path, method, body=''):
    enc = timestamp + method + path + body
    enc_b = bytes(enc, 'utf-8')
    secret = bytes(aqua_secret, 'utf-8')
    sig = hmac.new(secret, enc_b, hashlib.sha256).hexdigest()
    return sig


def get_headers():
    timestamp = str(int(time.time() * 1000))
    internal_signature = get_signature(aqua_api_secret, timestamp, get_signature_internal_path, "GET")
    body_cspm = ('{"autoconnect":true,"cloud":"azure","connection":{"azure":{"application_id":"' +
                     application_id + '","directory_id":"' + directory_id + '","display_name":"' + subscription_name + '","key_value":"' +
                     application_password + '","subscription_id":"' + subscription_id +
                     '"}},"group_id":' + str(int(aqua_cspm_group_id)) + ',"name":"' + subscription_id + '"}'
                 )
    signature_cspm_keys = get_signature(aqua_api_secret, timestamp, get_signature_cspm_path, "POST", body_cspm)

    headers = {
        "X-API-Key": aqua_api_key,
        "X-Authenticate-Api-Key-Signature": internal_signature,
        "X-Register-New-Cspm-Signature": signature_cspm_keys,
        "X-Timestamp": timestamp
    }
    return headers


def onboard_subscription():

    body = {
        "configuration_id": aqua_configuration_id,
        "cspm_group_id": int(aqua_cspm_group_id),
        "organization_id": organization_id,
        "deployment_method": deployment_method,
        "is_custom_name_vol_scan": is_custom_name_vol_scan,
        "resource_group_name_vol_scan": aqua_volscan_resource_group_name,
        "subscription_name": subscription_name,
        "payload": {
            "subscription_id": subscription_id,
            "password": application_password,
            "application_id": application_id,
            "directory_id": directory_id,
            "additional_resource_tags": aqua_custom_tags
        }
    }
    body_json = json.dumps(body)

    conn = http.client.HTTPSConnection(aqua_autoconnect_url, context = ssl._create_unverified_context())
    path = "/discover/azure"
    method = "POST"

    conn.request(method, path, body=body_json, headers=get_headers())
    response = conn.getresponse()

    conn.close()

    return 'received response: status {}, body: {}'.format(response.status, response.read().decode("utf-8"))


if __name__ == "__main__":
    onboarding_status = onboard_subscription()

    output = {
        "status": onboarding_status
    }
    print(json.dumps(output))
