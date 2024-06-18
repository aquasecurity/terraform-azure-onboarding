locals {
  tenant_id = data.azuread_client_config.current.tenant_id

  subscription_id  = var.onboarding_type == "single-subscription" ? data.azurerm_subscription.current[0].subscription_id : ""
  subscription_ids = var.onboarding_type == "management-group" ? data.azurerm_management_group.current[0].all_subscription_ids : []

  application_name = var.onboarding_type == "management-group" ? "aqua-cspm-scanner-${local.tenant_id}-${var.management_group_id}" : "aqua-cspm-scanner-${local.subscription_id}"
}
