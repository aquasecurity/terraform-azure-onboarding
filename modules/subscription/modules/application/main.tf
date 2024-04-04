resource "azuread_application" "aqua_cspm_scanner" {
  display_name = var.application_name
}
locals {
  application_password_name = "rbac"
  application_password_end_date = "262980h"
}
resource "azuread_application_password" "aqua_cspm_scanner" {
  display_name      = local.application_password_name
  application_id    = "/applications/${azuread_application.aqua_cspm_scanner.object_id}"
  end_date_relative = local.application_password_end_date
}

resource "azuread_service_principal" "aqua_cspm_scanner" {
  client_id = azuread_application.aqua_cspm_scanner.client_id
}