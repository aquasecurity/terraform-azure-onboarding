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

  aqua_registry_scanner_role_name    = var.registry_scanning_deployment ? (var.aqua_registry_scanner_role_name == "" ? (var.onboarding_type == "management-group" ? "Aqua_Registry_Scanner_Role_${var.tenant_id}-${var.management_group_id}" : "Aqua_Registry_Scanner_Role_${var.subscription_id}") : var.aqua_registry_scanner_role_name) : ""
  aqua_registry_scanner_role_scope   = local.aqua_cspm_role_scope
  aqua_registry_scanner_role_json    = jsondecode(data.http.autoconnect_registry_scanner_role.response_body)
  aqua_registry_scanner_role_actions = var.onboarding_type == "management-group" ? concat(local.aqua_cspm_role_management_group_actions_addition, local.aqua_registry_scanner_role_json["Actions"]) : local.aqua_registry_scanner_role_json["Actions"]

  aqua_serverless_scanner_role_name    = var.serverless_scanning_deployment ? (var.aqua_serverless_scanner_role_name == "" ? (var.onboarding_type == "management-group" ? "Aqua_Serverless_Scanner_Role_${var.tenant_id}-${var.management_group_id}" : "Aqua_Serverless_Scanner_Role_${var.subscription_id}") : var.aqua_serverless_scanner_role_name) : ""
  aqua_serverless_scanner_role_scope   = local.aqua_cspm_role_scope
  aqua_serverless_scanner_role_json    = jsondecode(data.http.autoconnect_serverless_scanner_role.response_body)
  aqua_serverless_scanner_role_actions = var.onboarding_type == "management-group" ? concat(local.aqua_cspm_role_management_group_actions_addition, local.aqua_serverless_scanner_role_json["Actions"]) : local.aqua_serverless_scanner_role_json["Actions"]

  aqua_agentless_role_name  = var.onboarding_type == "management-group" ? "aqua-agentless-scanner-${var.tenant_id}-${var.management_group_id}" : "aqua-agentless-scanner-${var.subscription_id}"
  aqua_agentless_role_scope = var.onboarding_type == "management-group" ? "/providers/Microsoft.Management/managementGroups/${var.management_group_id}" : "/subscriptions/${var.subscription_id}"
  _agentless_role_body      = var.volume_scanning_deployment ? data.http.autoconnect_agentless_scanner_role[0].response_body : "{\"Description\":\"\",\"Actions\":[],\"NotActions\":[],\"DataActions\":[],\"NotDataActions\":[]}"
  aqua_agentless_role_json  = jsondecode(local._agentless_role_body)
}

