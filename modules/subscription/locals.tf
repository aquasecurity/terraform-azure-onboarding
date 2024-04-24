locals {
  tags                    = merge({ "aqua-agentless-scanner" = "true" }, var.aqua_custom_tags)
  is_custom_name_vol_scan = var.aqua_volscan_resource_group_name != "aqua-agentless-scanner" || var.aqua_event_subscriptions_name != "aqua-agentless-scanner" || var.aqua_system_topics_name != "aqua-agentless-scanner" || var.aqua_subnet_name != "aqua-agentless-scanner" || var.aqua_virtual_network_name != "aqua-agentless-scanner" || var.aqua_network_security_group_name != "aqua-agentless-scanner"
}
