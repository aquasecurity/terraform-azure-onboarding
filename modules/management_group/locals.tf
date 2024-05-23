
locals {
  aqua_volscan_template_location                       = var.aqua_volscan_resource_group_location
  autoconnect_agentless_scanner_delete_role_definition = data.http.autoconnect_agentless_scanner_role.response_body
  aqua_agentless_delete_role_name                      = "aqua-agentless-scanner-delete-role-${var.management_group_id}"
  is_custom_name_vol_scan                              = tostring(var.aqua_volscan_resource_group_name != "aqua-agentless-scanner" || var.aqua_event_subscriptions_name != "aqua-agentless-scanner" || var.aqua_system_topics_name != "aqua-agentless-scanner" || var.aqua_subnet_name != "aqua-agentless-scanner")
}