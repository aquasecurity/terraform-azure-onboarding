
resource "azurerm_eventgrid_system_topic" "aqua_agentless_scanner" {
  name                   = var.aqua_system_topics_name
  location               = "global"
  resource_group_name    = var.aqua_volscan_resource_group_name
  source_arm_resource_id = var.resource_group_id
  topic_type             = "Microsoft.Resources.ResourceGroups"
  tags                   = var.tags
}

resource "azurerm_eventgrid_system_topic_event_subscription" "aqua_agentless_scanner" {
  name                  = var.aqua_event_subscriptions_name
  system_topic          = azurerm_eventgrid_system_topic.aqua_agentless_scanner.name
  resource_group_name   = var.aqua_volscan_resource_group_name
  event_delivery_schema = "EventGridSchema"
  included_event_types = [
    "Microsoft.Resources.ResourceWriteSuccess",
    "Microsoft.Resources.ResourceDeleteSuccess",
  ]
  advanced_filtering_on_arrays_enabled = true

  webhook_endpoint {
    url                               = var.aqua_volscan_api_url
    max_events_per_batch              = 1
    preferred_batch_size_in_kilobytes = 64
  }
  delivery_property {
    header_name = "x-vs-api-key"
    type        = "Static"
    value       = var.aqua_volscan_api_token
    secret      = true
  }

  subject_filter {
    subject_ends_with = "-aas"
  }
}