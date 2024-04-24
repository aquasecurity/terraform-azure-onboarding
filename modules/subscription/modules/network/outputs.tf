
output "virtual_networks_names" {
  value = [
    for network in azurerm_virtual_network.aqua_agentless_scanner :
    {
      name = network.name
    }
  ]
  description = "Virtual Networks names"
}

output "security_groups_names" {
  value = [
    for security_group in azurerm_network_security_group.aqua_agentless_scanner :
    {
      name = security_group.name
    }
  ]
  description = "Security Groups names"
}


