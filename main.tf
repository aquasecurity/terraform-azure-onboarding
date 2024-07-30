
module "application" {
  source                      = "./modules/application"
  application_name            = local.application_name
  create_service_principal    = var.create_service_principal
  application_id              = var.application_id
  application_password        = var.application_password
  service_principal_object_id = var.service_principal_object_id
}

module "iam" {
  source              = "./modules/iam"
  onboarding_type     = var.onboarding_type
  aqua_bucket_name    = var.aqua_bucket_name
  aqua_cspm_role_name = var.aqua_cspm_role_name
  principal_id        = module.application.service_principal_object_id
  subscription_id     = local.subscription_id
  management_group_id = var.management_group_id
  tenant_id           = local.tenant_id
  depends_on          = [module.application]
}

module "management_group" {
  source                               = "./modules/management_group"
  count                                = var.onboarding_type == "management-group" ? 1 : 0
  application_id                       = module.application.application_id
  application_password                 = module.application.application_password
  aqua_api_key                         = var.aqua_api_key
  aqua_api_secret                      = var.aqua_api_secret
  aqua_autoconnect_url                 = var.aqua_autoconnect_url
  aqua_bucket_name                     = var.aqua_bucket_name
  aqua_configuration_id                = var.aqua_configuration_id
  aqua_cspm_group_id                   = var.aqua_cspm_group_id
  aqua_cspm_url                        = var.aqua_cspm_url
  aqua_custom_tags                     = var.aqua_custom_tags
  management_group_id                  = var.management_group_id
  aqua_network_security_group_name     = var.aqua_network_security_group_name
  aqua_volscan_resource_group_location = var.aqua_volscan_resource_group_location
  aqua_virtual_network_name            = var.aqua_virtual_network_name
  aqua_volscan_api_token               = var.aqua_volscan_api_token
  aqua_volscan_api_url                 = var.aqua_volscan_api_url
  aqua_volscan_scan_locations          = var.aqua_volscan_scan_locations
  aqua_event_subscriptions_name        = var.aqua_event_subscriptions_name
  aqua_subnet_name                     = var.aqua_subnet_name
  aqua_system_topics_name              = var.aqua_system_topics_name
  aqua_volscan_resource_group_name     = var.aqua_volscan_resource_group_name
  service_principal_id                 = module.application.service_principal_object_id
  subscription_ids                     = local.subscription_ids
  depends_on                           = [module.iam]
}

module "subscription" {
  source                               = "./modules/subscription"
  count                                = var.onboarding_type == "single-subscription" ? 1 : 0
  aqua_bucket_name                     = var.aqua_bucket_name
  onboarding_type                      = var.onboarding_type
  principal_id                         = module.application.service_principal_object_id
  subscription_id                      = data.azurerm_subscription.current[0].subscription_id
  management_group_id                  = var.management_group_id
  tenant_id                            = local.tenant_id
  application_id                       = module.application.application_id
  application_password                 = module.application.application_password
  aqua_volscan_resource_group_name     = var.aqua_volscan_resource_group_name
  aqua_volscan_resource_group_location = var.aqua_volscan_resource_group_location
  aqua_autoconnect_url                 = var.aqua_autoconnect_url
  aqua_volscan_api_url                 = var.aqua_volscan_api_url
  aqua_volscan_api_token               = var.aqua_volscan_api_token
  aqua_api_key                         = var.aqua_api_key
  aqua_api_secret                      = var.aqua_api_secret
  aqua_configuration_id                = var.aqua_configuration_id
  aqua_cspm_group_id                   = var.aqua_cspm_group_id
  aqua_volscan_scan_locations          = var.aqua_volscan_scan_locations
  aqua_virtual_network_name            = var.aqua_virtual_network_name
  aqua_subnet_name                     = var.aqua_subnet_name
  aqua_network_security_group_name     = var.aqua_network_security_group_name
  aqua_system_topics_name              = var.aqua_system_topics_name
  aqua_event_subscriptions_name        = var.aqua_event_subscriptions_name
  aqua_custom_tags                     = var.aqua_custom_tags
  create_network                       = var.create_network
  depends_on                           = [module.iam]
}