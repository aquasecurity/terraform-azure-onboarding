locals {
  aqua_cspm_role_name  = var.aqua_cspm_role_name == "" ? (var.onboarding_type == "management-group" ? "Aqua_Auto_Discovery_Scanner_Role_${var.tenant_id}-${var.management_group_id}" : "Aqua_Auto_Discovery_Scanner_Role_${var.subscription_id}") : var.aqua_cspm_role_name
  aqua_cspm_role_scope = var.onboarding_type == "management-group" ? "/providers/Microsoft.Management/managementGroups/${var.management_group_id}" : "/subscriptions/${var.subscription_id}"
  aqua_cspm_role_json  = jsondecode(data.http.autoconnect_cspm_scanner_role.response_body)
  aqua_cspm_role_management_group_actions_addition = [
    "Microsoft.Management/managementGroups/read",
    "Microsoft.Management/managementGroups/descendants/read",
    "Microsoft.Management/managementGroups/subscriptions/read"
  ]
  aqua_cspm_role_actions = var.onboarding_type == "management-group" ? concat(local.aqua_cspm_role_management_group_actions_addition, local.aqua_cspm_role_json["Actions"]) : local.aqua_cspm_role_json["Actions"]

  aqua_agentless_role_name  = var.onboarding_type == "management-group" ? "aqua-agentless-scanner-${var.tenant_id}-${var.management_group_id}" : "aqua-agentless-scanner-${var.subscription_id}"
  aqua_agentless_role_scope = var.onboarding_type == "management-group" ? "/providers/Microsoft.Management/managementGroups/${var.management_group_id}" : "/subscriptions/${var.subscription_id}"
  aqua_agentless_role_json  = jsondecode(data.http.autoconnect_agentless_scanner_role.response_body)
}

