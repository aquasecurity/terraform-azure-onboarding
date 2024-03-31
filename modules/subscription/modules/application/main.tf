resource "azuread_application" "aqua_cspm_scanner" {
  display_name = var.application_name
}

resource "azuread_application_password" "aqua_cspm_scanner" {
  display_name      = var.application_password_name
  application_id    = "/applications/${azuread_application.aqua_cspm_scanner.object_id}"
  end_date_relative = var.application_password_end_date
}

resource "azuread_service_principal" "aqua_cspm_scanner" {
  client_id = azuread_application.aqua_cspm_scanner.client_id
}