locals {
  aqua_agentless_delete_role_name  = var.onboarding_type == "management-group" ? "aqua-agentless-scanner-delete-role-${var.management_group_id}-${var.subscription_id}" : "aqua-agentless-scanner-delete-role-${var.subscription_id}"
  aqua_agentless_delete_role_scope = "/subscriptions/${var.subscription_id}/resourceGroups/${var.aqua_volscan_resource_group_name}"
  aqua_agentless_delete_role_json  = jsondecode(data.http.autoconnect_agentless_scanner_delete_role.response_body)
}

