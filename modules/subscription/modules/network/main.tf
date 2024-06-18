
resource "azurerm_network_security_group" "aqua_agentless_scanner" {
  for_each            = toset(var.aqua_volscan_scan_locations)
  name                = "${var.aqua_network_security_group_name}-${each.value}"
  location            = each.value
  resource_group_name = var.aqua_volscan_resource_group_name
  tags                = var.tags
}

resource "azurerm_virtual_network" "aqua_agentless_scanner" {
  count               = length(var.aqua_volscan_scan_locations)
  name                = "${var.aqua_virtual_network_name}-${var.aqua_volscan_scan_locations[count.index]}"
  address_space       = local.virtual_network_address_space
  location            = var.aqua_volscan_scan_locations[count.index]
  resource_group_name = var.aqua_volscan_resource_group_name
  subnet {
    name                 = var.aqua_subnet_name
    security_group       = azurerm_network_security_group.aqua_agentless_scanner[var.aqua_volscan_scan_locations[count.index]].id
    address_prefix       = local.subnet_address_prefixes
  }
  tags                = var.tags
}
