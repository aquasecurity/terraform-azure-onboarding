# `resource_group` module

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
| [azurerm_resource_group.aqua_agentless_scanner](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="aqua_volscan_resource_group_name"></a> [aqua\_volscan\_resource\_group\_name](#aqua\_volscan\_resource\_group\_name) | Aqua volume scanning Resource Group Name | `string` | n/a | yes |
| <a name="aqua_volscan_resource_group_location"></a> [aqua\_volscan\_resource\_group\_location](#aqua\_volscan\_resource\_group\_location) | Aqua volume scanning Resource Group Location | `string` | n/a | yes |
| <a name="resource_group_tags"></a> [resource\_group\_tags](#resource\_group\_tags) | Resource Group Tags | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="aqua_volscan_resource_group_name"></a> [aqua\_volscan\_resource\_group\_name](#aqua\_volscan\_resource\_group\_name) | Aqua volume scanning Resource Group Name |
| <a name="resource_group_id"></a> [resource\_group\_id](#resource\_group\_id) | Resource Group ID |
<!-- END_TF_DOCS -->