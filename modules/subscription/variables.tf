variable "aqua_bucket_name" {
  type        = string
  description = "Aqua Bucket Name"
}

variable "tenant_id" {
  type        = string
  description = "Tenant ID"
}

variable "onboarding_type" {
  type        = string
  description = "The type of onboarding"
}

variable "management_group_id" {
  type        = string
  description = "Aqua Management Group ID"
}

variable "principal_id" {
  type        = string
  description = "The ID of the Service Principal to assign the Role Definition to"
}

variable "application_id" {
  type        = string
  description = "Application ID - represented by the Service principal client ID associated with the application"
}

variable "application_password" {
  type        = string
  sensitive   = true
  description = "Application password"
}

variable "subscription_id" {
  type        = string
  description = "Subscription ID"
}

variable "subscription_name" {
  type        = string
  description = "Subscription Name"
}

variable "aqua_custom_tags" {
  type        = map(string)
  description = "Client Additional Resource Tags"
}

variable "aqua_volscan_resource_group_name" {
  type        = string
  description = "Aqua volume scanning Resource Group Name"
}

variable "aqua_volscan_resource_group_location" {
  type        = string
  description = "Aqua volume scanning Resource Group Location"
}

variable "create_network" {
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

variable "aqua_network_security_group_name" {
  type        = string
  description = "Aqua network security group name"
}

variable "aqua_subnet_name" {
  type        = string
  description = "Aqua volume scanning subnet name"
}

variable "aqua_system_topics_name" {
  type        = string
  description = "Aqua Event Grid System Topics"
}

variable "aqua_event_subscriptions_name" {
  type        = string
  description = "Aqua Event Subscriptions Name"
}

variable "aqua_volscan_api_url" {
  type        = string
  description = "Aqua volume scan API URL"
}

variable "aqua_volscan_api_token" {
  type        = string
  sensitive   = true
  description = "Aqua volume scanning API token"
}

variable "aqua_api_key" {
  type        = string
  sensitive   = true
  description = "Aqua API key"
}

variable "aqua_api_secret" {
  type        = string
  sensitive   = true
  description = "Aqua API secret key"
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