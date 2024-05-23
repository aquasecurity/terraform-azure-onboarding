data "azuread_client_config" "current" {}

data "azurerm_subscription" "current" {
  count = var.onboarding_type == "single-subscription" ? 1 : 0
}

data "azurerm_management_group" "current" {
  count = var.onboarding_type == "management-group" ? 1 : 0
  name  = var.management_group_id
}