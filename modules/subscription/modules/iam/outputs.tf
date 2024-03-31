
output "aqua_cspm_scanner_role_definition_id" {
  value       = azurerm_role_definition.aqua_cspm_scanner.role_definition_id
  description = "The ID of the created AQUA CSPM role definition"
}

output "aqua_agentless_scanner_role_definition_id" {
  value       = azurerm_role_definition.aqua_agentless_scanner.role_definition_id
  description = "The ID of the created AQUA agentless role definition"
}

output "aqua_agentless_scanner_delete_role_definition_id" {
  value       = azurerm_role_definition.aqua_agentless_scanner_delete.role_definition_id
  description = "The ID of the created AQUA agentless delete role definition"
}
