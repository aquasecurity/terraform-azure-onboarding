# `network` module

<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 3.95.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_network_security_group.aqua_agentless_scanner](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/network_security_group) | resource |
| [azurerm_virtual_network.aqua_agentless_scanner](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_network) | resource |
| [azurerm_subnet.aqua_agentless_scanner](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/subnet) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="tags"></a> [tags](#tags) | Client Additional Resource Tags | `string` | n/a | yes |
| <a name="aqua_volscan_scan_locations"></a> [aqua\_volscan\_scan\_locations](#aqua\_volscan\_scan\_locations) | Aqua list of volume scanning locations | `string` | n/a | yes |
| <a name="aqua_volscan_resource_group_name"></a> [aqua\_volscan\_resource\_group\_name](#aqua\_volscan\_resource\_group\_name) | Aqua volume scanning Resource Group Name | `string` | n/a | yes |
| <a name="aqua_virtual_network_name"></a> [aqua\_virtual\_network\_name](#aqua\_virtual\_network\_name) | Aqua volume scanning virtual network name | `string` | n/a | yes |
| <a name="virtual_network_address_space"></a> [virtual\_network\_address\_space](#virtual\_network\_address\_space) | Aqua volume scanning virtual network address space | `string` | n/a | yes |
| <a name="aqua_network_security_group_name"></a> [aqua\_network\_security\_group\_name](#aqua\_network\_security\_group\_name) | Aqua volume scanning network security group name | `string` | n/a | yes |
| <a name="aqua_subnet_name"></a> [aqua\_subnet\_name](#aqua\_subnet\_name) | Aqua volume scanning subnet name | `string` | n/a | yes |
| <a name="subnet_address_prefixes"></a> [subnet\_address\_prefixes](#subnet\_address\_prefixes) | Aqua volume scanning subnet address prefixes | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="virtual_networks_names"></a> [virtual\_networks\_names](#virtual\_networks\_names) | Virtual Networks list |
| <a name="security_groups_names"></a> [security\_groups\_names](#security\_groups\_names) | Security Groups list |
<!-- END_TF_DOCS -->