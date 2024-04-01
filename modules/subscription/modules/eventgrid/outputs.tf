output "eventgrid_id" {
  value       = azurerm_eventgrid_system_topic.aqua_agentless_scanner.id
  description = "EventGrid ID"
}
