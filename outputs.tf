output "subscription_id" {
  value       = var.show_outputs ? module.subscription.subscription_id : null
  description = "Subscription ID"
}
output "application_id" {
  value       = var.show_outputs ? module.subscription.application_id : null
  description = "Application ID"
}

output "eventgrid_id" {
  value       = var.show_outputs ? module.subscription.eventgrid_id : null
  description = "EventGrid ID"
}

output "aqua_cspm_scanner_role_definition_id" {
  value       = var.show_outputs ? module.subscription.aqua_cspm_scanner_role_definition_id : null
  description = "The ID of the created Aqua CSPM role definition"
}

output "aqua_agentless_scanner_role_definition_id" {
  value       = var.show_outputs ? module.subscription.aqua_agentless_scanner_role_definition_id : null
  description = "The ID of the created Aqua agentless role definition"
}

output "aqua_agentless_scanner_delete_role_definition_id" {
  value       = var.show_outputs ? module.subscription.aqua_agentless_scanner_delete_role_definition_id : null
  description = "The ID of the created Aqua agentless delete role definition"
}

output "aqua_volscan_resource_group_name" {
  value       = var.show_outputs ? module.subscription.aqua_volscan_resource_group_name : null
  description = "Aqua volume scanning Resource Group Name"
}

output "resource_group_id" {
  value       = var.show_outputs ? module.subscription.resource_group_id : null
  description = "Resource Group ID"
}

output "virtual_networks_names" {
  value       = var.show_outputs ? module.subscription.virtual_networks_names : null
  description = "Virtual Networks list"
}

output "security_groups_names" {
  value       = var.show_outputs ? module.subscription.security_groups_names : null
  description = "Security Groups list"
}
