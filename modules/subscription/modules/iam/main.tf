resource "azurerm_role_definition" "aqua_agentless_scanner_delete" {
  name        = local.aqua_agentless_delete_role_name
  scope       = local.aqua_agentless_delete_role_scope
  description = local.aqua_agentless_delete_role_json["description"]
  permissions {
    actions = local.aqua_agentless_delete_role_json["permissions"][0]["actions"]
  }
  assignable_scopes = [
    local.aqua_agentless_delete_role_scope
  ]
}

resource "azurerm_role_assignment" "aqua_agentless_scanner_delete" {
  scope              = local.aqua_agentless_delete_role_scope
  principal_id       = var.principal_id
  role_definition_id = azurerm_role_definition.aqua_agentless_scanner_delete.role_definition_resource_id
}
