output "aqua_connected_subscriptions" {
  value       = data.external.autoconnect_continuous_onboarding.result["aqua_connected_subscriptions"]
  description = "Aqua connected subscriptions"
}

output "management_group_id" {
  value       = var.management_group_id
  description = "Management Group ID - Relevant when onboarding_type is management-group"
}

output "management_group_subscriptions" {
  value       = data.external.autoconnect_continuous_onboarding.result["management_group_subscriptions"]
  description = "Management group subscription list"
}

output "offboard_subscriptions" {
  value       = data.external.autoconnect_continuous_onboarding.result["offboard_subscriptions"]
  description = "Offboard subscriptions"
}

output "offboard_subscription_results" {
  value       = data.external.autoconnect_continuous_onboarding.result["offboard_result"]
  description = "Offboard status"
}

output "onboard_subscriptions" {
  value       = data.external.autoconnect_continuous_onboarding.result["onboard_subscriptions"]
  description = "Subscriptions to be onboarded"
}

output "continuous_onboarding_error" {
  value       = data.external.autoconnect_continuous_onboarding.result["Error"]
  description = "Continuous onboarding error"
}




