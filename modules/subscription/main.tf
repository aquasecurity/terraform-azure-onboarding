data "azurerm_resource_group" "resource_group" {
  count = var.volume_scanning_deployment && !var.create_network ? 1 : 0
  name  = var.aqua_volscan_resource_group_name
}

module "resource_group" {
  source                               = "./modules/resource_group"
  count                                = var.volume_scanning_deployment && var.create_network ? 1 : 0
  aqua_volscan_resource_group_name     = var.aqua_volscan_resource_group_name
  aqua_volscan_resource_group_location = var.aqua_volscan_resource_group_location
  resource_group_tags                  = local.tags
}

module "network" {
  source = "./modules/network"
  count  = var.volume_scanning_deployment && var.create_network ? 1 : 0

  aqua_virtual_network_name        = var.aqua_virtual_network_name
  aqua_volscan_scan_locations      = var.aqua_volscan_scan_locations
  aqua_volscan_resource_group_name = module.resource_group[0].aqua_volscan_resource_group_name
  tags                             = local.tags

  aqua_network_security_group_name = var.aqua_network_security_group_name

  aqua_subnet_name = var.aqua_subnet_name
  depends_on       = [module.resource_group]
}

module "eventgrid" {
  source = "./modules/eventgrid"
  count  = var.volume_scanning_deployment ? 1 : 0
  tags   = local.tags

  aqua_system_topics_name          = var.aqua_system_topics_name
  aqua_event_subscriptions_name    = var.aqua_event_subscriptions_name
  aqua_volscan_api_url             = var.aqua_volscan_api_url
  aqua_volscan_api_token           = var.aqua_volscan_api_token
  aqua_volscan_resource_group_name = var.aqua_volscan_resource_group_name
  resource_group_id                = var.create_network ? module.resource_group[0].resource_group_id : data.azurerm_resource_group.resource_group[0].id
  depends_on = [
    module.resource_group,
    data.azurerm_resource_group.resource_group,
  ]
}

module "iam" {
  source                           = "./modules/iam"
  count                            = var.volume_scanning_deployment ? 1 : 0
  onboarding_type                  = var.onboarding_type
  aqua_bucket_name                 = var.aqua_bucket_name
  subscription_id                  = var.subscription_id
  aqua_volscan_resource_group_name = var.aqua_volscan_resource_group_name
  principal_id                     = var.principal_id
  management_group_id              = var.management_group_id
  depends_on = [
    module.resource_group,
    data.azurerm_resource_group.resource_group,
  ]
}


