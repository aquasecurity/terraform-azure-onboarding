variable "env" {
  type        = string
  description = "Environment"
}

variable "subscription_id" {
  type        = string
  description = "Subscription ID"
}

variable "aqua_management_group_id" {
  type        = string
  description = "Aqua Management Group ID"
}

variable "aqua_custom_tags" {
  type        = map(string)
  description = "Client Additional Resource Tags"
}

variable "application_name" {
  type        = string
  description = "Aqua Auto Discovery Application Name"
}

variable "application_password_name" {
  type        = string
  description = "Aqua Event Application Password Name"
}

variable "application_password_end_date" {
  type        = string
  description = "Aqua Event Application End Date"
}

variable "aqua_volscan_resource_group_name" {
  type        = string
  description = "Aqua volume scanning Resource Group Name"
}

variable "aqua_volscan_resource_group_location" {
  type        = string
  description = "Aqua volume scanning Resource Group Location"
}

variable "aqua_cspm_role_name" {
  type        = string
  description = "Aqua Auto Discovery Scanner Role Name"
}

variable "cspm_role_scope" {
  type        = string
  description = "The scope at which the Role Definition applies to"
}

variable "aqua_create_network" {
  type        = bool
  description = "Whether to create the network resources"
}

variable "aqua_volscan_scan_locations" {
  type        = list(string)
  description = "Aqua volume scanning locations"
}

variable "aqua_virtual_network_name" {
  type        = string
  description = "Aqua volume scanning virtual network name"
}

variable "virtual_network_address_space" {
  type        = list(string)
  description = "Aqua volume scanning virtual network address space"
}

variable "aqua_network_security_group_name" {
  type        = string
  description = "Aqua network security group name"
}

variable "aqua_subnet_name" {
  type        = string
  description = "Aqua volume scanning subnet name"
}

variable "subnet_address_prefixes" {
  type        = list(string)
  description = "Aqua volume scanning subnet address prefixes"
}

variable "aqua_system_topics_name" {
  type        = string
  description = "Aqua Event Grid System Topics"
}

variable "aqua_event_subscriptions_name" {
  type        = string
  description = "Aqua Event Subscriptions Name"
}

variable "event_subscription_filter" {
  type        = string
  description = "Aqua Event Subscription Filter"
}

variable "event_subscription_delivery_name" {
  type        = string
  description = "Aqua Event Subscription delivery name"
}

variable "event_subscription_delivery_type" {
  type        = string
  description = "Aqua Event Subscription delivery type"
}

variable "aqua_volscan_api_url" {
  type        = string
  description = "Aqua volume scan API URL"
}

variable "aqua_volscan_api_token" {
  type        = string
  description = "Aqua volume scanning API token"
}

variable "aqua_api_key" {
  type        = string
  description = "Aqua API key"
}

variable "aqua_api_secret" {
  type        = string
  description = "Aqua API secret key"
}

variable "get_signature_internal_path" {
  type        = string
  description = "Aqua signature internal path"
}

variable "get_signature_cspm_path" {
  type        = string
  description = "Aqua signature CSPM path"
}

variable "aqua_autoconnect_url" {
  type        = string
  description = "Aqua AutoConnect URL"
}

variable "aqua_cspm_group_id" {
  type        = string
  description = "CSPM group id"
}

variable "aqua_configuration_id" {
  type        = string
  description = "Aqua configuration id"
}

variable "is_custom_name_vol_scan" {
  type        = string
  description = "Is custom name vol scan"
}