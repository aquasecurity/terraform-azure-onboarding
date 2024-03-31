# `iam` module

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
| [azurerm_role_definition.aqua_cspm_scanner](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/role_definition) | resource |
| [azurerm_role_assignment.aqua_cspm_scanner](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/role_assignment) | resource |
| [azurerm_role_assignment.aqua_cspm_scanner_acr_pull_role](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/role_assignment) | resource |
| [azurerm_role_assignment.aqua_cspm_scanner_agentless_role](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/role_assignment) | resource |
| [azurerm_role_definition.aqua_agentless_scanner](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/role_definition) | resource |
| [azurerm_role_definition.aqua_agentless_scanner_delete](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/role_definition) | resource |
| [azurerm_role_assignment.aqua_agentless_scanner_delete](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/role_assignment) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="env"></a> [env](#env) | Environment | `string` | n/a | yes |
| <a name="aqua_cspm_role_name"></a> [aqua\_cspm\_role\_name](#aqua\_cspm\_role\_name) | Aqua Auto Discovery Scanner Role Name | `string` | n/a | yes |
| <a name="cspm_role_scope"></a> [cspm\_role\_scope](#cspm\_role\_scope) | The scope at which the Role Definition applies to | `string` | n/a | yes |
| <a name="principal_id"></a> [principal\_id](#principal\_id) | The ID of the Service Principal to assign the Role Definition to | `string` | n/a | yes |
| <a name="subscription_id"></a> [subscription\_id](#subscription\_id) | Subscription ID | `string` | n/a | yes |
| <a name="aqua_volscan_resource_group_name"></a> [aqua\_volscan\_resource\_group\_name](#aqua\_volscan\_resource\_group\_name) | Aqua volume scanning Resource Group Name | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="aqua_cspm_scanner_role_definition_id"></a> [aqua\_cspm\_scanner\_role\_definition\_id](#aqua\_cspm\_scanner\_role\_definition\_id) | The ID of the created AQUA CSPM role definition |
| <a name="aqua_agentless_scanner_role_definition_id"></a> [aqua\_agentless\_scanner\_role\_definition\_id](#aqua\_agentless\_scanner\_role\_definition\_id) | The ID of the created AQUA agentless role definition |
| <a name="aqua_agentless_scanner_delete_role_definition_id"></a> [aqua\_agentless\_scanner\_delete\_role\_definition\_id](#aqua\_agentless\_scanner\_delete\_role\_definition\_id) | The ID of the created AQUA agentless delete role definition |
<!-- END_TF_DOCS -->