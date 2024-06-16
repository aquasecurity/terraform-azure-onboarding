output "aqua_connected_subscriptions" {
  value       = module.continuous_onboarding.aqua_connected_subscriptions
  description = "Aqua connected subscriptions"
}

output "management_group_subscriptions" {
  value       = module.continuous_onboarding.management_group_subscriptions
  description = "Management group subscription list"
}

output "offboard_subscriptions" {
  value       = module.continuous_onboarding.offboard_subscriptions
  description = "Offboard subscriptions"
}

output "offboard_subscription_results" {
  value       = module.continuous_onboarding.offboard_subscription_results
  description = "Offboard status"
}

output "onboard_subscriptions" {
  value       = module.continuous_onboarding.onboard_subscriptions
  description = "Subscriptions to be onboarded"
}

output "continuous_onboarding_error" {
  value       = module.continuous_onboarding.continuous_onboarding_error
  description = "Continuous onboarding error"
}




