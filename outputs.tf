output "subscription_id" {
  value       = var.show_outputs ? (var.onboarding_type == "single-subscription" ? data.azurerm_subscription.current[0].subscription_id : null) : null
  description = "Subscription ID"
}

output "management_group_name" {
  value       = var.show_outputs ? (var.onboarding_type == "management-group" ? data.azurerm_management_group.current[0].display_name : null) : null
  description = "Management Group name"
}

output "application_id" {
  value       = var.show_outputs ? module.application.application_id : null
  description = "Application ID"
}

output "aqua_cspm_scanner_role_definition_id" {
  value       = var.show_outputs ? module.iam.aqua_cspm_scanner_role_definition_id : null
  description = "The ID of the created Aqua CSPM role definition"
}

output "aqua_agentless_scanner_role_definition_id" {
  value       = var.show_outputs ? module.iam.aqua_agentless_scanner_role_definition_id : null
  description = "The ID of the created Aqua agentless role definition"
}

output "aqua_agentless_scanner_delete_role_definition_id" {
  value = var.show_outputs ? (var.onboarding_type == "single-subscription" ? {
    for subscription_id, subscription_details in module.subscription[0] : subscription_id => subscription_details.aqua_agentless_scanner_delete_role_definition_id
  } : null) : null
  description = "The ID of the created Aqua agentless delete role definition"
}

output "eventgrid_id" {
  value = var.show_outputs ? (var.onboarding_type == "single-subscription" ? {
    for subscription_id, subscription_details in module.subscription[0] : subscription_id => subscription_details.eventgrid_id
  } : null) : null
  description = "EventGrid ID"
}

output "aqua_volscan_resource_group_name" {
  value = var.show_outputs ? (var.onboarding_type == "single-subscription" ? {
    for subscription_id, subscription_details in module.subscription[0] : subscription_id => subscription_details.aqua_volscan_resource_group_name
  } : null) : null
  description = "Aqua volume scanning Resource Group Name"
}

output "resource_group_id" {
  value = var.show_outputs ? (var.onboarding_type == "single-subscription" ? {
    for subscription_id, subscription_details in module.subscription[0] : subscription_id => subscription_details.resource_group_id
  } : null) : null
  description = "Resource Group ID"
}

output "virtual_networks_names" {
  value = var.show_outputs ? (var.onboarding_type == "single-subscription" ? {
    for subscription_id, subscription_details in module.subscription[0] : subscription_id => subscription_details.virtual_networks_names
  } : null) : null
  description = "Virtual Networks names"
}

output "security_groups_names" {
  value = var.show_outputs ? (var.onboarding_type == "single-subscription" ? {
    for subscription_id, subscription_details in module.subscription[0] : subscription_id => subscription_details.security_groups_names
  } : null) : null
  description = "Security Groups names"
}

output "aqua_connected_subscriptions" {
  value       = var.show_outputs ? (var.onboarding_type == "management-group" ? module.management_group[0].aqua_connected_subscriptions : null) : null
  description = "Aqua connected subscriptions"
}

output "management_group_subscriptions" {
  value       = var.show_outputs ? (var.onboarding_type == "management-group" ? module.management_group[0].management_group_subscriptions : null) : null
  description = "Management group subscription list"
}

output "offboard_subscriptions" {
  value       = var.show_outputs ? (var.onboarding_type == "management-group" ? module.management_group[0].offboard_subscriptions : null) : null
  description = "Offboard subscriptions"
}

output "offboard_subscription_results" {
  value       = var.show_outputs ? (var.onboarding_type == "management-group" ? module.management_group[0].offboard_subscription_results : null) : null
  description = "Offboard status"
}

output "onboard_subscriptions" {
  value       = var.show_outputs ? (var.onboarding_type == "management-group" ? module.management_group[0].onboard_subscriptions : null) : null
  description = "Subscriptions to be onboarded"
}