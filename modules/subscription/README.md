# `subscription` module

<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azuread"></a> [azuread](#provider\_azuread) | n/a |
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |
| <a name="provider_external"></a> [external](#provider\_external) | n/a |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_application"></a> [application](#module\_application) | ./modules/application | n/a |
| <a name="module_eventgrid"></a> [eventgrid](#module\_eventgrid) | ./modules/eventgrid | n/a |
| <a name="module_iam"></a> [iam](#module\_iam) | ./modules/iam | n/a |
| <a name="module_network"></a> [network](#module\_network) | ./modules/network | n/a |
| <a name="module_resource_group"></a> [resource\_group](#module\_resource\_group) | ./modules/resource_group | n/a |

## Resources

| Name | Type |
|------|------|
| [azuread_client_config.current](https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/data-sources/client_config) | data source |
| [azurerm_resource_group.resource_group](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/resource_group) | data source |
| [external_external.autoconnect_trigger_discovery](https://registry.terraform.io/providers/hashicorp/external/latest/docs/data-sources/external) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_application_name"></a> [application\_name](#input\_application\_name) | Aqua Auto Discovery Application Name | `string` | n/a | yes |
| <a name="input_aqua_api_key"></a> [aqua\_api\_key](#input\_aqua\_api\_key) | Aqua API key | `string` | n/a | yes |
| <a name="input_aqua_api_secret"></a> [aqua\_api\_secret](#input\_aqua\_api\_secret) | Aqua API secret key | `string` | n/a | yes |
| <a name="input_aqua_autoconnect_url"></a> [aqua\_autoconnect\_url](#input\_aqua\_autoconnect\_url) | Aqua AutoConnect URL | `string` | n/a | yes |
| <a name="input_aqua_configuration_id"></a> [aqua\_configuration\_id](#input\_aqua\_configuration\_id) | Aqua configuration id | `string` | n/a | yes |
| <a name="input_aqua_cspm_group_id"></a> [aqua\_cspm\_group\_id](#input\_aqua\_cspm\_group\_id) | CSPM group id | `string` | n/a | yes |
| <a name="input_aqua_cspm_role_name"></a> [aqua\_cspm\_role\_name](#input\_aqua\_cspm\_role\_name) | Aqua Auto Discovery Scanner Role Name | `string` | n/a | yes |
| <a name="input_aqua_custom_tags"></a> [aqua\_custom\_tags](#input\_aqua\_custom\_tags) | Client Additional Resource Tags | `map(string)` | n/a | yes |
| <a name="input_aqua_deployment_method"></a> [aqua\_deployment\_method](#input\_aqua\_deployment\_method) | Aqua deployment method | `string` | `"Terraform"` | no |
| <a name="input_aqua_event_subscriptions_name"></a> [aqua\_event\_subscriptions\_name](#input\_aqua\_event\_subscriptions\_name) | Aqua Event Subscriptions Name | `string` | n/a | yes |
| <a name="input_aqua_management_group_id"></a> [aqua\_management\_group\_id](#input\_aqua\_management\_group\_id) | Aqua Management Group ID | `string` | n/a | yes |
| <a name="input_aqua_network_security_group_name"></a> [aqua\_network\_security\_group\_name](#input\_aqua\_network\_security\_group\_name) | Aqua network security group name | `string` | n/a | yes |
| <a name="input_aqua_subnet_name"></a> [aqua\_subnet\_name](#input\_aqua\_subnet\_name) | Aqua volume scanning subnet name | `string` | n/a | yes |
| <a name="input_aqua_system_topics_name"></a> [aqua\_system\_topics\_name](#input\_aqua\_system\_topics\_name) | Aqua Event Grid System Topics | `string` | n/a | yes |
| <a name="input_aqua_virtual_network_name"></a> [aqua\_virtual\_network\_name](#input\_aqua\_virtual\_network\_name) | Aqua volume scanning virtual network name | `string` | n/a | yes |
| <a name="input_aqua_volscan_api_token"></a> [aqua\_volscan\_api\_token](#input\_aqua\_volscan\_api\_token) | Aqua volume scanning API token | `string` | n/a | yes |
| <a name="input_aqua_volscan_api_url"></a> [aqua\_volscan\_api\_url](#input\_aqua\_volscan\_api\_url) | Aqua volume scan API URL | `string` | n/a | yes |
| <a name="input_aqua_volscan_resource_group_location"></a> [aqua\_volscan\_resource\_group\_location](#input\_aqua\_volscan\_resource\_group\_location) | Aqua volume scanning Resource Group Location | `string` | n/a | yes |
| <a name="input_aqua_volscan_resource_group_name"></a> [aqua\_volscan\_resource\_group\_name](#input\_aqua\_volscan\_resource\_group\_name) | Aqua volume scanning Resource Group Name | `string` | n/a | yes |
| <a name="input_aqua_volscan_scan_locations"></a> [aqua\_volscan\_scan\_locations](#input\_aqua\_volscan\_scan\_locations) | Aqua volume scanning locations | `list(string)` | n/a | yes |
| <a name="input_create_network"></a> [create\_network](#input\_create\_network) | Whether to create the network resources | `bool` | n/a | yes |
| <a name="input_cspm_role_scope"></a> [cspm\_role\_scope](#input\_cspm\_role\_scope) | The scope at which the Role Definition applies to | `string` | n/a | yes |
| <a name="input_env"></a> [env](#input\_env) | Environment | `string` | n/a | yes |
| <a name="input_is_custom_name_vol_scan"></a> [is\_custom\_name\_vol\_scan](#input\_is\_custom\_name\_vol\_scan) | Is custom name vol scan | `string` | n/a | yes |
| <a name="input_subscription_id"></a> [subscription\_id](#input\_subscription\_id) | Subscription ID | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_application_id"></a> [application\_id](#output\_application\_id) | Application ID |
| <a name="output_application_password"></a> [application\_password](#output\_application\_password) | Application Password |
| <a name="output_aqua_agentless_scanner_delete_role_definition_id"></a> [aqua\_agentless\_scanner\_delete\_role\_definition\_id](#output\_aqua\_agentless\_scanner\_delete\_role\_definition\_id) | The ID of the created AQUA agentless delete role definition |
| <a name="output_aqua_agentless_scanner_role_definition_id"></a> [aqua\_agentless\_scanner\_role\_definition\_id](#output\_aqua\_agentless\_scanner\_role\_definition\_id) | The ID of the created AQUA agentless role definition |
| <a name="output_aqua_cspm_scanner_role_definition_id"></a> [aqua\_cspm\_scanner\_role\_definition\_id](#output\_aqua\_cspm\_scanner\_role\_definition\_id) | The ID of the created AQUA CSPM role definition |
| <a name="output_aqua_volscan_resource_group_name"></a> [aqua\_volscan\_resource\_group\_name](#output\_aqua\_volscan\_resource\_group\_name) | Aqua volume scanning Resource Group Name |
| <a name="output_eventgrid_id"></a> [eventgrid\_id](#output\_eventgrid\_id) | EventGrid ID |
| <a name="output_resource_group_id"></a> [resource\_group\_id](#output\_resource\_group\_id) | Resource Group ID |
<!-- END_TF_DOCS -->
