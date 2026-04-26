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
  count = var.registry_scanning_deployment ? 1 : 0

  scope                = local.aqua_cspm_role_scope
  principal_id         = var.principal_id
  role_definition_name = "AcrPull"
}

resource "azurerm_role_definition" "aqua_registry_scanner" {
  count = var.registry_scanning_deployment ? 1 : 0

  name        = local.aqua_registry_scanner_role_name
  scope       = local.aqua_registry_scanner_role_scope
  description = local.aqua_registry_scanner_role_json["Description"]
  permissions {
    actions          = local.aqua_registry_scanner_role_actions
    not_actions      = local.aqua_registry_scanner_role_json["NotActions"]
    data_actions     = local.aqua_registry_scanner_role_json["DataActions"]
    not_data_actions = local.aqua_registry_scanner_role_json["NotDataActions"]
  }
  assignable_scopes = [local.aqua_registry_scanner_role_scope]
}

resource "azurerm_role_assignment" "aqua_registry_scanner" {
  count = var.registry_scanning_deployment ? 1 : 0

  scope              = local.aqua_registry_scanner_role_scope
  principal_id       = var.principal_id
  role_definition_id = azurerm_role_definition.aqua_registry_scanner[0].role_definition_resource_id
}

resource "azurerm_role_definition" "aqua_serverless_scanner" {
  count = var.serverless_scanning_deployment ? 1 : 0

  name        = local.aqua_serverless_scanner_role_name
  scope       = local.aqua_serverless_scanner_role_scope
  description = local.aqua_serverless_scanner_role_json["Description"]
  permissions {
    actions          = local.aqua_serverless_scanner_role_actions
    not_actions      = local.aqua_serverless_scanner_role_json["NotActions"]
    data_actions     = local.aqua_serverless_scanner_role_json["DataActions"]
    not_data_actions = local.aqua_serverless_scanner_role_json["NotDataActions"]
  }
  assignable_scopes = [local.aqua_serverless_scanner_role_scope]
}

resource "azurerm_role_assignment" "aqua_serverless_scanner" {
  count = var.serverless_scanning_deployment ? 1 : 0

  scope              = local.aqua_serverless_scanner_role_scope
  principal_id       = var.principal_id
  role_definition_id = azurerm_role_definition.aqua_serverless_scanner[0].role_definition_resource_id
}

resource "azurerm_role_definition" "aqua_agentless_scanner" {
  count = var.volume_scanning_deployment ? 1 : 0

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
  count = var.volume_scanning_deployment ? 1 : 0

  scope              = local.aqua_agentless_role_scope
  principal_id       = var.principal_id
  role_definition_id = azurerm_role_definition.aqua_agentless_scanner[0].role_definition_resource_id
}