# `eventgrid` module

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
| [azurerm_eventgrid_system_topic.aqua_agentless_scanner](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/eventgrid_system_topic) | resource |
| [azurerm_eventgrid_event_subscription.aqua_agentless_scanner](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/eventgrid_event_subscription) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="tags"></a> [tags](#tags) | Client Additional Resource Tags | `string` | n/a | yes |
| <a name="aqua_system_topics_name"></a> [aqua\_system\_topics\_name](#aqua\_system\_topics\_name) | Aqua Event Grid System Topics | `string` | n/a | yes |
| <a name="aqua_event_subscriptions_name"></a> [aqua\_event\_subscriptions\_name](#aqua\_event\_subscriptions\_name) | Aqua Event Subscriptions Name | `string` | n/a | yes |
| <a name="event_subscription_filter"></a> [event\_subscription\_filter](#event\_subscription\_filter) | Aqua Event Subscription Filter | `string` | n/a | yes |
| <a name="event_subscription_delivery_name"></a> [event\_subscription\_delivery\_name](#event\_subscription\_delivery\_name) | Aqua Event Subscription delivery name | `string` | n/a | yes |
| <a name="event_subscription_delivery_type"></a> [event\_subscription\_delivery\_type](#event\_subscription\_delivery\_type) | Aqua Event Subscription delivery type | `string` | n/a | yes |
| <a name="aqua_volscan_api_url"></a> [aqua\_volscan\_api\_url](#aqua\_volscan\_api\_url) | Aqua volume scanning API URL | `string` | n/a | yes |
| <a name="aqua_volscan_api_token"></a> [aqua\_volscan\_api\_token](#aqua\_volscan\_api\_token) | Aqua volume scanning API token | `string` | n/a | yes |
| <a name="aqua_volscan_resource_group_name"></a> [aqua\_volscan\_resource\_group\_name](#aqua\_volscan\_resource\_group\_name) | Aqua volume scanning Resource Group Name | `string` | n/a | yes |
| <a name="resource_group_id"></a> [resource\_group\_id](#resource\_group\_id) | Resource Group ID | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="eventgrid_id"></a> [eventgrid\_id](#eventgrid\_id) | EventGrid ID |
<!-- END_TF_DOCS -->
