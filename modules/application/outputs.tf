
output "service_principal_object_id" {
  value       = var.create_service_principal ? azuread_service_principal.aqua_cspm_scanner[0].object_id : var.service_principal_object_id
  description = "Service principal object ID associated with the application"
}

output "application_id" {
  value       = var.create_service_principal ? azuread_service_principal.aqua_cspm_scanner[0].client_id : var.application_id
  description = "Application ID - represented by the Service principal client ID associated with the application"
}

output "application_password" {
  value       = var.create_service_principal ? azuread_application_password.aqua_cspm_scanner[0].value : var.application_password
  sensitive   = true
  description = "Application password"
}
