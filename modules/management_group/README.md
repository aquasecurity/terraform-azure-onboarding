# `management_group` module

---

This Terraform module creates the Management Group resources - on Azure.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.6.4 |
| <a name="requirement_azuread"></a> [azuread](#requirement\_azuread) | ~>2.47.0 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | ~>3.95.0 |
| <a name="requirement_http"></a> [http](#requirement\_http) | ~>3.4.2 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | ~>3.95.0 |
| <a name="provider_http"></a> [http](#provider\_http) | ~>3.4.2 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_management_group_template_deployment.management_group_deployment](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/management_group_template_deployment) | resource |
| [http_http.autoconnect_agentless_deployment_management_group_template](https://registry.terraform.io/providers/hashicorp/http/latest/docs/data-sources/http) | data source |
| [http_http.autoconnect_agentless_scanner_role](https://registry.terraform.io/providers/hashicorp/http/latest/docs/data-sources/http) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_application_id"></a> [application\_id](#input\_application\_id) | Application ID - represented by the Service principal client ID associated with the application | `string` | n/a | yes |
| <a name="input_application_password"></a> [application\_password](#input\_application\_password) | Application password | `string` | n/a | yes |
| <a name="input_aqua_api_key"></a> [aqua\_api\_key](#input\_aqua\_api\_key) | Aqua API key | `string` | n/a | yes |
| <a name="input_aqua_api_secret"></a> [aqua\_api\_secret](#input\_aqua\_api\_secret) | Aqua API secret key | `string` | n/a | yes |
| <a name="input_aqua_autoconnect_url"></a> [aqua\_autoconnect\_url](#input\_aqua\_autoconnect\_url) | Aqua AutoConnect URL | `string` | n/a | yes |
| <a name="input_aqua_bucket_name"></a> [aqua\_bucket\_name](#input\_aqua\_bucket\_name) | Aqua Bucket Name | `string` | n/a | yes |
| <a name="input_aqua_configuration_id"></a> [aqua\_configuration\_id](#input\_aqua\_configuration\_id) | Aqua configuration id | `string` | n/a | yes |
| <a name="input_aqua_cspm_group_id"></a> [aqua\_cspm\_group\_id](#input\_aqua\_cspm\_group\_id) | Aqua CSPM group ID | `string` | n/a | yes |
| <a name="input_aqua_cspm_url"></a> [aqua\_cspm\_url](#input\_aqua\_cspm\_url) | Aqua CSPM group url | `string` | n/a | yes |
| <a name="input_aqua_custom_tags"></a> [aqua\_custom\_tags](#input\_aqua\_custom\_tags) | Aqua Client Additional Resource Tags | `map(string)` | n/a | yes |
| <a name="input_aqua_event_subscriptions_name"></a> [aqua\_event\_subscriptions\_name](#input\_aqua\_event\_subscriptions\_name) | Aqua volume scanning Event Subscriptions Name | `string` | `"aqua-agentless-scanner"` | no |
| <a name="input_aqua_network_security_group_name"></a> [aqua\_network\_security\_group\_name](#input\_aqua\_network\_security\_group\_name) | Aqua volume scanning Network Security Group Name | `string` | n/a | yes |
| <a name="input_aqua_subnet_name"></a> [aqua\_subnet\_name](#input\_aqua\_subnet\_name) | Aqua volume scanning Subnet Name | `string` | `"aqua-agentless-scanner"` | no |
| <a name="input_aqua_system_topics_name"></a> [aqua\_system\_topics\_name](#input\_aqua\_system\_topics\_name) | Aqua volume scanning Event Grid System Topic Name | `string` | `"aqua-agentless-scanner"` | no |
| <a name="input_aqua_virtual_network_name"></a> [aqua\_virtual\_network\_name](#input\_aqua\_virtual\_network\_name) | Aqua volume scanning Virtual Network Name | `string` | n/a | yes |
| <a name="input_aqua_volscan_api_token"></a> [aqua\_volscan\_api\_token](#input\_aqua\_volscan\_api\_token) | Aqua volume scanning API token | `string` | n/a | yes |
| <a name="input_aqua_volscan_api_url"></a> [aqua\_volscan\_api\_url](#input\_aqua\_volscan\_api\_url) | Aqua volume scan API URL | `string` | n/a | yes |
| <a name="input_aqua_volscan_resource_group_location"></a> [aqua\_volscan\_resource\_group\_location](#input\_aqua\_volscan\_resource\_group\_location) | Aqua volume scanning Resource Group Location | `string` | n/a | yes |
| <a name="input_aqua_volscan_resource_group_name"></a> [aqua\_volscan\_resource\_group\_name](#input\_aqua\_volscan\_resource\_group\_name) | Aqua volume scanning Resource Group Name | `string` | `"aqua-agentless-scanner"` | no |
| <a name="input_aqua_volscan_scan_locations"></a> [aqua\_volscan\_scan\_locations](#input\_aqua\_volscan\_scan\_locations) | List of Azure locations to scan | `list(string)` | n/a | yes |
| <a name="input_management_group_id"></a> [management\_group\_id](#input\_management\_group\_id) | Management Group ID - Relevant when onboarding\_type is management-group | `string` | n/a | yes |
| <a name="input_service_principal_id"></a> [service\_principal\_id](#input\_service\_principal\_id) | The ID of the Service Principal to assign the Role Definition to | `string` | n/a | yes |
| <a name="input_subscription_ids"></a> [subscription\_ids](#input\_subscription\_ids) | List of the Management Group subscriptions | `list(string)` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->