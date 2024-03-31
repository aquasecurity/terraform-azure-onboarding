resource "random_string" "uuid" {
  length  = 6
  special = false
}

resource "azurerm_role_definition" "aqua_cspm_scanner" {
  name        = "${var.aqua_cspm_role_name}-${random_string.uuid.lower}"
  scope       = var.cspm_role_scope
  description = local.scpm_scanner_role_json["Description"]
  permissions {
    actions          = local.scpm_scanner_role_json["Actions"]
    data_actions     = local.scpm_scanner_role_json["DataActions"]
    not_data_actions = local.scpm_scanner_role_json["NotDataActions"]
  }
  assignable_scopes = [
    var.cspm_role_scope
  ]
}

resource "azurerm_role_assignment" "aqua_cspm_scanner" {
  scope              = var.cspm_role_scope
  principal_id       = var.principal_id
  role_definition_id = azurerm_role_definition.aqua_cspm_scanner.role_definition_resource_id
}


resource "azurerm_role_assignment" "aqua_cspm_scanner_acr_pull_role" {
  scope                = var.cspm_role_scope
  principal_id         = var.principal_id
  role_definition_name = local.acr_pull_role_name
}

resource "azurerm_role_assignment" "aqua_cspm_scanner_agentless_role" {
  depends_on         = [azurerm_role_definition.aqua_agentless_scanner]
  scope              = var.cspm_role_scope
  principal_id       = var.principal_id
  role_definition_id = azurerm_role_definition.aqua_agentless_scanner.role_definition_resource_id
}

resource "azurerm_role_definition" "aqua_agentless_scanner" {
  name        = "${local.agentless_role_name}-${random_string.uuid.lower}"
  scope       = var.cspm_role_scope
  description = local.agentless_role_json["Description"]
  permissions {
    actions = local.agentless_role_json["Actions"]
  }
  assignable_scopes = [
    var.cspm_role_scope
  ]
}

resource "azurerm_role_definition" "aqua_agentless_scanner_delete" {
  name        = local.agentless_delete_role_name
  scope       = var.cspm_role_scope
  description = local.agentless_delete_role_json["description"]
  permissions {
    actions = local.agentless_delete_role_json["permissions"][0]["actions"]
  }
  assignable_scopes = [
    local.agentless_delete_role_assignable_scopes
  ]
}

resource "azurerm_role_assignment" "aqua_agentless_scanner_delete" {
  depends_on = [
    azurerm_role_definition.aqua_agentless_scanner_delete,
  ]
  scope              = local.agentless_delete_role_assignable_scopes
  principal_id       = var.principal_id
  role_definition_id = azurerm_role_definition.aqua_agentless_scanner_delete.role_definition_resource_id
}
