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
  description = "The ID of the created AQUA CSPM role definition"
}

output "aqua_agentless_scanner_role_definition_id" {
  value       = var.show_outputs ? module.subscription.aqua_agentless_scanner_role_definition_id : null
  description = "The ID of the created AQUA agentless role definition"
}

output "aqua_agentless_scanner_delete_role_definition_id" {
  value       = var.show_outputs ? module.subscription.aqua_agentless_scanner_delete_role_definition_id : null
  description = "The ID of the created AQUA agentless delete role definition"
}

# FIXME:
# output "virtual_networks_names" {
#   value       = var.show_outputs ? module.network.virtual_networks_names[*]["name"] : null
#   description = "Virtual Networks list"
# }

# output "security_groups_names" {
#   value       = var.show_outputs ? module.network.security_groups_names[*]["name"] : null
#   description = "Security Groups list"
# }

output "aqua_volscan_resource_group_name" {
  value       = var.show_outputs ? module.subscription.aqua_volscan_resource_group_name : null
  description = "Aqua volume scanning Resource Group Name"
}

output "resource_group_id" {
  value       = var.show_outputs ? module.subscription.resource_group_id : null
  description = "Resource Group ID"
}






