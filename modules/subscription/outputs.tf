output "aqua_agentless_scanner_delete_role_definition_id" {
  value       = var.volume_scanning_deployment ? module.iam[0].aqua_agentless_scanner_delete_role_definition_id : null
  description = "The ID of the created Aqua agentless delete role definition"
}

output "eventgrid_id" {
  value       = var.volume_scanning_deployment ? module.eventgrid[0].eventgrid_id : null
  description = "EventGrid ID"
}

output "aqua_volscan_resource_group_name" {
  value       = var.aqua_volscan_resource_group_name
  description = "Aqua volume scanning Resource Group Name"
}

output "resource_group_id" {
  value       = var.volume_scanning_deployment ? (var.create_network ? module.resource_group[0].resource_group_id : data.azurerm_resource_group.resource_group[0].id) : null
  description = "Resource Group ID"
}

output "virtual_networks_names" {
  value       = var.volume_scanning_deployment && var.create_network ? module.network[0].virtual_networks_names : null
  description = "Virtual Networks names"
}

output "security_groups_names" {
  value       = var.volume_scanning_deployment && var.create_network ? module.network[0].security_groups_names : null
  description = "Security Groups names"
}

output "onboarding_status" {
  value = data.external.autoconnect_trigger_discovery.result.status
}






