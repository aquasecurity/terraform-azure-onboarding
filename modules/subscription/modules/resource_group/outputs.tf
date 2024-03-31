output "aqua_volscan_resource_group_name" {
  value       = azurerm_resource_group.aqua_agentless_scanner.name
  description = "Aqua volume scanning Resource Group Name"
}

output "resource_group_id" {
  value       = azurerm_resource_group.aqua_agentless_scanner.id
  description = "Resource Group ID"
}