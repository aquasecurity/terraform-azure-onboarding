resource "azuread_application" "aqua_cspm_scanner" {
  count        = var.create_service_principal ? 1 : 0
  display_name = var.application_name
}

resource "azuread_application_password" "aqua_cspm_scanner" {
  count             = var.create_service_principal ? 1 : 0
  display_name      = "rbac"
  application_id    = "/applications/${azuread_application.aqua_cspm_scanner[0].object_id}"
  end_date_relative = "262980h"
}

resource "azuread_service_principal" "aqua_cspm_scanner" {
  count     = var.create_service_principal ? 1 : 0
  client_id = azuread_application.aqua_cspm_scanner[0].client_id
}