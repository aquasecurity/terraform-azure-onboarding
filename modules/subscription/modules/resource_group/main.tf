
resource "azurerm_resource_group" "aqua_agentless_scanner" {
  name     = var.aqua_volscan_resource_group_name
  location = var.aqua_volscan_resource_group_location
  tags     = var.resource_group_tags
}