![Aquasecurity logo](https://avatars3.githubusercontent.com/u/12783832?s=200&v=4)

# Terraform-azure-onboarding

[![Version](https://img.shields.io/badge/version-1.0.0-blue)](https://github.com/aquasecurity/terraform-gcp-onboarding)
[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)

This Terraform module provides an easy way
to configure Aqua Security’s CSPM and agentless solutions on Azure.

It creates the necessary resources, such as service accounts, roles, and permissions,
to enable seamless integration with Aqua’s platform.

---

## Table of Contents

- [Pre-requisites](#pre-requisites)
- [Usage](#usage)
- [Examples](#examples)
- [Using Existing Network](#using-existing-network)
- [Requirements](#requirements)
- [Providers](#providers)
- [Modules](#modules)
- [Resources](#resources)
- [Inputs](#inputs)
- [Outputs](#outputs)

## Pre-requisites

Before using this module, ensure that you have the following:

- Terraform version `1.6.4` or later.
- `azure` CLI installed and configured.
- `Python` 3+ installed.
- Aqua Security account API credentials.

## Usage
1. Leverage the Aqua platform to generate the local variables required by the module.
2. Important: Replace `<aqua_api_key>` and `<aqua_api_secret>` with your generated API credentials.
3. Run `az account set --subscription "<subscription_name>"` to set azure cli context.
4. Run `terraform init` to initialize the module.
5. Run `terraform apply` to create the resources.

## Examples

Here's an example of how to use this module:

```hcl
module "aqua_azure_onboarding" {
    source                                = "aquasecurity/onboarding/azure"
    aqua_volscan_api_url                  = "aqua-volscan-api-url"
    aqua_volscan_api_token                = "aqua-volscan-api-token"
    aqua_volscan_resource_group_location  = "westus3"
    aqua_volscan_scan_locations           = ["australiaeast","australiasoutheast"]
    aqua_cspm_group_id                    = "cspm-group-id"
    aqua_configuration_id                 = "aqua-configuration-id"
    aqua_autoconnect_url                  = "aqua-autoconnect-url"
    aqua_api_key                          = "aqua-api-key"
    aqua_api_secret                       = "aqua-api-secret"
    aqua_custom_tags                      = { aqua = "true" }
}
```

## Using Existing Network

If you prefer to use existing networking instead of Aqua provisioning new ones,
you can do so by setting `create_network = false` in the module's input variables.
In this case, you will need to create,
prior to onboarding, the following resources with the following naming convention:

* Resource group:
  * Name `'aqua-agentless-scanner'`
  * Tag `aqua-agentless-scanner:true`
* Security group (per each chosen scan location):
  * Name `<resource-group-name>-<region>`. E.g., `aqua-agentless-scanner-centralus`
  * Tag `aqua-agentless-scanner:true`
* Virtual network (per each chosen scan location):
  * Name `<resource-group-name>-<region>`. E.g., `aqua-agentless-scanner-centralus`
  * Tag `aqua-agentless-scanner:true`
* Subnet (attached to the virtual network):
  * Name `<resource-group-name>`. E.g., `aqua-agentless-scanner`


<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.6.4 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | ~> 3.95.0 |
| <a name="requirement_azuread"></a> [azuread](#requirement\_azuread) | ~> 2.47.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="requirement_http"></a> [http](#requirement\_http) | ~> 3.4.2 |
| <a name="requirement_external"></a> [external](#requirement\_external) | ~> 2.3.3 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="subscription"></a> [subscription](#subscription) | ./modules/subscription | n/a |

## Resources

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="aqua_custom_tags"></a> [aqua\_custom\_tags](#aqua\_custom\_tags) | Client Additional Resource Tags | `string` | {} | no |
| <a name="aqua_volscan_resource_group_name"></a> [aqua\_volscan\_resource\_group\_name](#aqua\_volscan\_resource\_group\_name) | Aqua volume scanning Resource Group Name | `string` | "aqua-agentless-scanner" | no |
| <a name="aqua_volscan_resource_group_location"></a> [aqua\_volscan\_resource\_group\_location](#aqua\_volscan\_resource\_group\_location) | Aqua volume scanning Resource Group Location | `string` | "eastus" | no |
| <a name="aqua_cspm_role_name"></a> [aqua\_cspm\_role\_name](#aqua\_cspm\_role\_name) | Aqua Auto Discovery Scanner Role Name | `string` | "" | no |
| <a name="aqua_create_network"></a> [aqua\_create\_network](#aqua\_create\_network) | Whether to create the network resources | `string` | true | no |
| <a name="aqua_volscan_scan_locations"></a> [aqua\_volscan\_scan\_locations](#aqua\_volscan\_scan\_locations) | Aqua volume scanning locations | `string` | <details>  <summary>Click Me</summary>  "eastus", "eastus2", "southcentralus", "westus2", "westus3", "australiaeast", "southeastasia", "northeurope", "swedencentral", "uksouth", "westeurope", "centralus", "southafricanorth", "centralindia", "eastasia", "japaneast", "koreacentral", "canadacentral", "francecentral", "germanywestcentral", "norwayeast", "switzerlandnorth", "uaenorth", "brazilsouth", "qatarcentral", "northcentralus", "westus", "westcentralus", "australiacentral", "australiasoutheast", "japanwest", "koreasouth", "southindia", "westindia", "canadaeast", "ukwest" </details> | no |
| <a name="aqua_virtual_network_name"></a> [aqua\_virtual\_network\_name](#aqua\_virtual\_network\_name) | Aqua volume scanning virtual network name | `string` | "aqua-agentless-scanner" | no |
| <a name="aqua_network_security_group_name"></a> [aqua\_network\_security\_group\_name](#aqua\_network\_security\_group\_name) | Aqua network security group name | `string` | "aqua-agentless-scanner" | no |
| <a name="aqua_subnet_name"></a> [aqua\_subnet\_name](#aqua\_subnet\_name) | Aqua volume scanning subnet name | `string` | "aqua-agentless-scanner" | no |
| <a name="aqua_system_topics_name"></a> [aqua\_system\_topics\_name](#aqua\_system\_topics\_name) | Aqua Event Grid System Topics | `string` | "aqua-agentless-scanner" | no |
| <a name="aqua_event_subscriptions_name"></a> [aqua\_event\_subscriptions\_name](#aqua\_event\_subscriptions\_name) | Aqua Event Subscriptions Name | `string` | "aqua-agentless-scanner" | no |
| <a name="event_subscription_delivery_name"></a> [event\_subscription\_delivery\_name](#event\_subscription\_delivery\_name) | Aqua Event Subscription delivery name | `string` | "" | no |
| <a name="is_custom_name_vol_scan"></a> [is\_custom\_name\_vol\_scan](#is\_custom\_name\_vol\_scan) | Is custom name vol scan | `string` | "false" | no |
| <a name="aqua_autoconnect_url"></a> [aqua\_autoconnect\_url](#aqua\_autoconnect\_url) | Aqua AutoConnect URL | `string` | n/a | yes |
| <a name="aqua_volscan_api_url"></a> [aqua\_volscan\_api\_url](#aqua\_volscan\_api\_url) | Aqua volume scan API URL | `string` | n/a | yes |
| <a name="aqua_volscan_api_token"></a> [aqua\_volscan\_api\_token](#aqua\_volscan\_api\_token) | Aqua volume scan API Token | `string` | n/a | yes |
| <a name="aqua_api_key"></a> [aqua\_api\_key](#aqua\_api\_key) | Aqua API Key | `string` | n/a | yes |
| <a name="aqua_api_secret"></a> [aqua\_api\_secret](#aqua\_api\_secret) | Aqua API Secret | `string` | n/a | yes |
| <a name="aqua_configuration_id"></a> [aqua\_configuration\_id](#aqua\_configuration\_id) | CSPM configuration id | `string` | n/a | yes |
| <a name="aqua_cspm_group_id"></a> [aqua\_cspm\_group\_id](#aqua\_cspm\_group\_id) | CSPM group id | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="eventgrid_id"></a> [eventgrid\_id](#eventgrid\_id) | EventGrid ID |
| <a name="aqua_cspm_scanner_role_definition_id"></a> [aqua\_cspm\_scanner\_role\_definition\_id](#aqua\_cspm\_scanner\_role\_definition\_id) | The ID of the created AQUA CSPM role definition |
| <a name="aqua_agentless_scanner_role_definition_id"></a> [aqua\_agentless\_scanner\_role\_definition\_id](#aqua\_agentless\_scanner\_role\_definition\_id) | The ID of the created AQUA agentless role definition |
| <a name="aqua_agentless_scanner_delete_role_definition_id"></a> [aqua\_agentless\_scanner\_delete\_role\_definition\_id](#aqua\_agentless\_scanner\_delete\_role\_definition\_id) | The ID of the created AQUA agentless delete role definition |
| <a name="virtual_networks_names"></a> [virtual\_networks\_names](#virtual\_networks\_names) | Virtual Networks list |
| <a name="security_groups_names"></a> [security\_groups\_names](#security\_groups\_names) | Security Groups list |
| <a name="aqua_volscan_resource_group_name"></a> [aqua\_volscan\_resource\_group\_name](#aqua\_volscan\_resource\_group\_name) | Aqua volume scanning Resource Group Name |
| <a name="resource_group_id"></a> [resource\_group\_id](#resource\_group\_id) | Resource Group ID |
<!-- END_TF_DOCS -->
