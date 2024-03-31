locals {
  env  = lookup({ "prod" = "prod", "stg" = "stage" }, regex("prod|stg", var.aqua_autoconnect_url), "stage")
  tags = merge({ "aqua-agentless-scanner" = "true" }, var.aqua_custom_tags)

  subscription_id = data.azurerm_subscription.current.subscription_id

  application_name = "aqua-cspm-scanner-${local.subscription_id}"

  aqua_cspm_role_name = var.aqua_cspm_role_name == "" ? "Aqua_Auto_Discovery_Scanner_Role_${local.subscription_id}" : var.aqua_cspm_role_name

  cspm_role_scope = "/subscriptions/${local.subscription_id}"

}