import time, json, sys, ssl
import hmac, hashlib
import http.client

timestamp = str(int(time.time() * 1000))

# Retrieve the query parameters
query = json.loads(sys.stdin.read())
get_signature_internal_path = "/v2/internal_apikeys"
get_signature_cspm_path = "/v2/keys"
aqua_api_key = query.get("aqua_api_key", "")
aqua_api_secret = query.get("aqua_api_secret", "")
aqua_autoconnect_url = query.get("aqua_autoconnect_url", "")
application_id = query.get("application_id", "")
directory_id = query.get("directory_id", "")
application_password = query.get("application_password", "")
subscription_id = query.get("subscription_id", "")
aqua_cspm_group_id = query.get("aqua_cspm_group_id", "")
aqua_configuration_id = query.get("aqua_configuration_id", "")
organization_id = query.get("organization_id", "")
is_custom_name_vol_scan = query.get("is_custom_name_vol_scan", "")
aqua_volscan_resource_group_name = query.get("aqua_volscan_resource_group_name", "")
if aqua_volscan_resource_group_name == "aqua-agentless-scanner":
    aqua_volscan_resource_group_name = ""        
aqua_custom_tags = query.get("aqua_custom_tags", "")
aqua_deployment_method = query.get("aqua_deployment_method", "")

def get_signature(aqua_secret, tstmp, path, method, body=''):
    enc = tstmp + method + path + body
    enc_b = bytes(enc, 'utf-8')
    secret = bytes(aqua_secret, 'utf-8')
    sig = hmac.new(secret, enc_b, hashlib.sha256).hexdigest()
    return sig

internal_signature = get_signature(aqua_api_secret, timestamp, get_signature_internal_path, "GET")
body_cspm = '{"autoconnect":true,"cloud":"azure","connection":{"azure":{"application_id":"' + application_id + '","directory_id":"' + directory_id + '","key_value":"' + application_password + '","subscription_id":"' + subscription_id + '"}},"group_id":' + str(int(aqua_cspm_group_id)) + ',"name":"' + subscription_id + '"}'

signature_cspm_keys = get_signature(aqua_api_secret, timestamp, get_signature_cspm_path, "POST", body_cspm)

headers = { 
    "X-API-Key": aqua_api_key,
    "X-Authenticate-Api-Key-Signature": internal_signature, 
    "X-Register-New-Cspm-Signature": signature_cspm_keys, 
    "X-Timestamp": timestamp
}

body = {
    "configuration_id": aqua_configuration_id,
    "cspm_group_id": int(aqua_cspm_group_id),
    "organization_id": organization_id,
    "deployment_method": aqua_deployment_method,
    "is_custom_name_vol_scan": is_custom_name_vol_scan,
    "resource_group_name_vol_scan": aqua_volscan_resource_group_name,
    "payload": {
        "subscription_id": subscription_id,
        "password": application_password,
        "application_id": application_id,
        "directory_id": directory_id,
        "additional_resource_tags": aqua_custom_tags
    }
}

body_json = json.dumps(body)


conn = http.client.HTTPSConnection(aqua_autoconnect_url.split("//")[1], context = ssl._create_unverified_context())
path = "/discover/azure"
method = "POST"

conn.request(method, path, body=body_json, headers=headers)
response = conn.getresponse()
onboarding_status = 'received response: status {}, body: {}'.format(response.status, response.read().decode("utf-8"))

conn.close() 

# Construct a dictionary (Map of String) values returned from the python script
output = {
    "status": onboarding_status
}


# Output the JSON object
print(json.dumps(output))
