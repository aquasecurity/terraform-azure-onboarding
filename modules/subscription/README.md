# `subscription` module

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.6.4 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | ~> 3.95.0 |
| <a name="requirement_azuread"></a> [azuread](#requirement\_azuread) | ~> 2.47.0 |
| <a name="requirement_http"></a> [http](#requirement\_http) | ~> 3.4.2 |
| <a name="requirement_external"></a> [external](#requirement\_external) | ~> 2.3.3 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_application"></a> [application](#module\_application) | ./modules/application | n/a |
| <a name="module_iam"></a> [iam](#module\_iam) | ./modules/iam | n/a |
| <a name="module_resource_group"></a> [resource_group](#module\_resource\_group) | ./modules/resource_group | n/a |
| <a name="module_pubsub"></a> [pubsub](#module\_pubsub) | ./modules/pubsub | n/a |
| <a name="module_network"></a> [network](#module\_network) | ./modules/network | n/a |
| <a name="module_eventgrid"></a> [eventgrid](#module\_eventgrid) | ./modules/eventgrid | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="env"></a> [env](#env) | Environment | `string` | n/a | yes |
| <a name="subscription_id"></a> [subscription\_id](#subscription\_id) | Subscription ID | `string` | n/a | yes |
| <a name="aqua_management_group_id"></a> [aqua\_management\_group\_id](#aqua\_management\_group\_id) | Aqua Management Group ID | `string` | n/a | yes |
| <a name="aqua_custom_tags"></a> [aqua\_custom\_tags](#aqua\_custom\_tags) | Client Additional Resource Tags | `string` | n/a | yes |
| <a name="aqua_volscan_resource_group_name"></a> [aqua\_volscan\_resource\_group\_name](#aqua\_volscan\_resource\_group\_name) | Aqua volume scanning Resource Group Name | `string` | n/a | yes |
| <a name="aqua_volscan_resource_group_location"></a> [aqua\_volscan\_resource\_group\_location](#aqua\_volscan\_resource\_group\_location) | Aqua volume scanning Resource Group Location | `string` | n/a | yes |
| <a name="aqua_cspm_role_name"></a> [aqua\_cspm\_role\_name](#aqua\_cspm\_role\_name) | Aqua Auto Discovery Scanner Role Name | `string` | n/a | yes |
| <a name="cspm_role_scope"></a> [cspm\_role\_scope](#cspm\_role\_scope) | The scope at which the Role Definition applies to | `string` | n/a | yes |
| <a name="aqua_create_network"></a> [aqua\_create\_network](#aqua\_create\_network) | Whether to create the network resources | `string` | n/a | yes |
| <a name="aqua_volscan_scan_locations"></a> [aqua\_volscan\_scan\_locations](#aqua\_volscan\_scan\_locations) | Aqua volume scanning locations | `string` | n/a | yes |
| <a name="aqua_virtual_network_name"></a> [aqua\_virtual\_network\_name](#aqua\_virtual\_network\_name) | Aqua volume scanning virtual network name | `string` | n/a | yes |
| <a name="aqua_network_security_group_name"></a> [aqua\_network\_security\_group\_name](#aqua\_network\_security\_group\_name) | Aqua network security group name | `string` | n/a | yes |
| <a name="aqua_subnet_name"></a> [aqua\_subnet\_name](#aqua\_subnet\_name) | Aqua volume scanning subnet name | `string` | n/a | yes |
| <a name="aqua_system_topics_name"></a> [aqua\_system\_topics\_name](#aqua\_system\_topics\_name) | Aqua Event Grid System Topics | `string` | n/a | yes |
| <a name="aqua_event_subscriptions_name"></a> [aqua\_event\_subscriptions\_name](#aqua\_event\_subscriptions\_name) | Aqua Event Subscriptions Name | `string` | n/a | yes |
| <a name="aqua_volscan_api_url"></a> [aqua\_volscan\_api\_url](#aqua\_volscan\_api\_url) | Aqua volume scan API URL | `string` | n/a | yes |
| <a name="aqua_volscan_api_token"></a> [aqua\_volscan\_api\_token](#aqua\_volscan\_api\_token) | Aqua volume scan API Token | `string` | n/a | yes |
| <a name="aqua_api_key"></a> [aqua\_api\_key](#aqua\_api\_key) | Aqua API Key | `string` | n/a | yes |
| <a name="aqua_api_secret"></a> [aqua\_api\_secret](#aqua\_api\_secret) | Aqua API Secret | `string` | n/a | yes |
| <a name="aqua_autoconnect_url"></a> [aqua\_autoconnect\_url](#aqua\_autoconnect\_url) | Aqua AutoConnect URL | `string` | n/a | yes |
| <a name="aqua_cspm_group_id"></a> [aqua\_cspm\_group\_id](#aqua\_cspm\_group\_id) | CSPM group id | `string` | n/a | yes |
| <a name="aqua_configuration_id"></a> [aqua\_configuration\_id](#aqua\_configuration\_id) | CSPM configuration id | `string` | n/a | yes |
| <a name="is_custom_name_vol_scan"></a> [is\_custom\_name\_vol\_scan](#is\_custom\_name\_vol\_scan) | Is custom name vol scan | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="application_id"></a> [application\_id](#application\_id) | Application ID |
| <a name="application_password"></a> [application\_password](#application\_password) | Application Password |
| <a name="eventgrid_id"></a> [eventgrid\_id](#eventgrid\_id) | EventGrid ID |
| <a name="aqua_cspm_scanner_role_definition_id"></a> [aqua\_cspm\_scanner\_role\_definition\_id](#aqua\_cspm\_scanner\_role\_definition\_id) | The ID of the created AQUA CSPM role definition |
| <a name="aqua_agentless_scanner_role_definition_id"></a> [aqua\_agentless\_scanner\_role\_definition\_id](#aqua\_agentless\_scanner\_role\_definition\_id) | The ID of the created AQUA agentless role definition |
| <a name="aqua_agentless_scanner_delete_role_definition_id"></a> [aqua\_agentless\_scanner\_delete\_role\_definition\_id](#aqua\_agentless\_scanner\_delete\_role\_definition\_id) | The ID of the created AQUA agentless delete role definition |
| <a name="virtual_networks_names"></a> [virtual\_networks\_names](#virtual\_networks\_names) | Virtual Networks list |
| <a name="security_groups_names"></a> [security\_groups\_names](#security\_groups\_names) | Security Groups list |
| <a name="aqua_volscan_resource_group_name"></a> [aqua\_volscan\_resource\_group\_name](#aqua\_volscan\_resource\_group\_name) | Aqua volume scanning Resource Group Name |
| <a name="resource_group_id"></a> [resource\_group\_id](#resource\_group\_id) | Resource Group ID |
<!-- END_TF_DOCS -->
