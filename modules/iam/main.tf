resource "azurerm_role_definition" "aqua_cspm_scanner" {
  name        = local.aqua_cspm_role_name
  scope       = local.aqua_cspm_role_scope
  description = local.aqua_cspm_role_json["Description"]
  permissions {
    actions          = local.aqua_cspm_role_actions
    not_actions      = local.aqua_cspm_role_json["NotActions"]
    data_actions     = local.aqua_cspm_role_json["DataActions"]
    not_data_actions = local.aqua_cspm_role_json["NotDataActions"]
  }
  assignable_scopes = [local.aqua_cspm_role_scope]
}

resource "azurerm_role_assignment" "aqua_cspm_scanner" {
  scope              = local.aqua_cspm_role_scope
  principal_id       = var.principal_id
  role_definition_id = azurerm_role_definition.aqua_cspm_scanner.role_definition_resource_id
}


resource "azurerm_role_assignment" "aqua_cspm_scanner_acr_pull_role" {
  scope                = local.aqua_cspm_role_scope
  principal_id         = var.principal_id
  role_definition_name = "AcrPull"
}

resource "azurerm_role_definition" "aqua_agentless_scanner" {
  name        = local.aqua_agentless_role_name
  scope       = local.aqua_agentless_role_scope
  description = local.aqua_agentless_role_json["Description"]
  permissions {
    actions          = local.aqua_agentless_role_json["Actions"]
    not_actions      = local.aqua_agentless_role_json["NotActions"]
    data_actions     = local.aqua_agentless_role_json["DataActions"]
    not_data_actions = local.aqua_agentless_role_json["NotDataActions"]
  }
  assignable_scopes = [
    local.aqua_agentless_role_scope
  ]
}

resource "azurerm_role_assignment" "aqua_agentless_scanner" {
  scope              = local.aqua_agentless_role_scope
  principal_id       = var.principal_id
  role_definition_id = azurerm_role_definition.aqua_agentless_scanner.role_definition_resource_id
}