
output "aqua_cspm_scanner_role_definition_id" {
  value       = azurerm_role_definition.aqua_cspm_scanner.role_definition_id
  description = "The ID of the created Aqua CSPM role definition"
}

output "aqua_registry_scanner_role_definition_id" {
  value       = var.registry_scanning_deployment ? azurerm_role_definition.aqua_registry_scanner[0].role_definition_id : null
  description = "The ID of the created Aqua registry scanner role definition"
}

output "aqua_serverless_scanner_role_definition_id" {
  value       = var.serverless_scanning_deployment ? azurerm_role_definition.aqua_serverless_scanner[0].role_definition_id : null
  description = "The ID of the created Aqua serverless scanner role definition"
}

output "aqua_agentless_scanner_role_definition_id" {
  value       = var.volume_scanning_deployment ? azurerm_role_definition.aqua_agentless_scanner[0].role_definition_id : null
  description = "The ID of the created Aqua agentless role definition"
}