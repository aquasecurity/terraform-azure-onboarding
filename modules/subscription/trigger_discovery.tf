# NOTE: 
# We use "external" provider here in order to provide the client 
# with the onboarding status if it successfully finished.
data "external" "autoconnect_trigger_discovery" {
  depends_on = [
    module.application,
    module.iam,
    module.resource_group,
    module.network,
    module.eventgrid,
  ]

  program = ["python3", "${path.module}/trigger_discovery.py"]

  query = {
    aqua_api_key                     = var.aqua_api_key
    aqua_api_secret                  = var.aqua_api_secret
    aqua_autoconnect_url             = var.aqua_autoconnect_url
    application_id                   = module.application.application_id
    directory_id                     = data.azuread_client_config.current.tenant_id
    application_password             = module.application.application_password
    subscription_id                  = var.subscription_id
    aqua_cspm_group_id               = var.aqua_cspm_group_id
    aqua_configuration_id            = var.aqua_configuration_id
    organization_id                  = var.aqua_management_group_id
    is_custom_name_vol_scan          = var.is_custom_name_vol_scan
    aqua_volscan_resource_group_name = var.aqua_volscan_resource_group_name
    aqua_deployment_method           = var.aqua_deployment_method
    aqua_custom_tags                 = join(",", [for key, value in var.aqua_custom_tags : "${key}:${value}"])
  }
}