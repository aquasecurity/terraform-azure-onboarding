locals {
  acr_pull_role_name     = "AcrPull"
  scpm_scanner_role_json = jsondecode(data.http.autoconnect_cspm_scanner_role.response_body)

  agentless_role_name = "aqua-agentless-scanner"
  agentless_role_json = jsondecode(data.http.autoconnect_agentless_scanner_role.response_body)

  agentless_delete_role_name              = "aqua-agentless-scanner-delete-role-${var.subscription_id}"
  agentless_delete_role_assignable_scopes = "${var.cspm_role_scope}/resourceGroups/${var.aqua_volscan_resource_group_name}"
  agentless_delete_role_json              = jsondecode(data.http.autoconnect_agentless_scanner_delete_role.response_body)
}