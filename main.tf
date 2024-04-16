module "subscription" {
  source = "./modules/subscription"

  aqua_management_group_id = var.aqua_management_group_id
  env                      = local.env

  aqua_custom_tags         = var.aqua_custom_tags

  aqua_volscan_resource_group_name     = var.aqua_volscan_resource_group_name
  aqua_volscan_resource_group_location = var.aqua_volscan_resource_group_location

  aqua_autoconnect_url   = var.aqua_autoconnect_url
  aqua_volscan_api_url   = var.aqua_volscan_api_url
  aqua_volscan_api_token = var.aqua_volscan_api_token
  aqua_api_key           = var.aqua_api_key
  aqua_api_secret        = var.aqua_api_secret
  aqua_configuration_id  = var.aqua_configuration_id
  aqua_cspm_group_id     = var.aqua_cspm_group_id

  create_network                   = var.create_network
  aqua_virtual_network_name        = var.aqua_virtual_network_name
  aqua_cspm_role_name              = var.aqua_cspm_role_name
  aqua_subnet_name                 = var.aqua_subnet_name
  aqua_network_security_group_name = var.aqua_network_security_group_name
  aqua_system_topics_name          = var.aqua_system_topics_name
  aqua_volscan_scan_locations      = var.aqua_volscan_scan_locations
  aqua_event_subscriptions_name    = var.aqua_event_subscriptions_name
}