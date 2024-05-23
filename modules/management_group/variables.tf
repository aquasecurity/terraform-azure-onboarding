variable "aqua_volscan_api_token" {
  type        = string
  sensitive   = true
  description = "Aqua volume scanning API token"
}

variable "aqua_cspm_group_id" {
  type        = string
  description = "Aqua CSPM group ID"
}

variable "aqua_custom_tags" {
  type        = map(string)
  description = "Aqua Client Additional Resource Tags"
}

variable "aqua_cspm_url" {
  type        = string
  description = "Aqua CSPM group url"
}

variable "subscription_ids" {
  type        = list(string)
  description = "List of the Management Group subscriptions"
}

variable "aqua_bucket_name" {
  type        = string
  description = "Aqua Bucket Name"
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

variable "aqua_volscan_resource_group_location" {
  type        = string
  description = "Aqua volume scanning Resource Group Location"
}

variable "management_group_id" {
  type        = string
  description = "Management Group ID - Relevant when onboarding_type is management-group"
}

variable "service_principal_id" {
  type        = string
  description = "The ID of the Service Principal to assign the Role Definition to"
}

variable "aqua_volscan_api_url" {
  type        = string
  description = "Aqua volume scan API URL"
}

variable "aqua_system_topics_name" {
  type        = string
  default     = "aqua-agentless-scanner"
  description = "Aqua volume scanning Event Grid System Topic Name"
}

variable "aqua_event_subscriptions_name" {
  type        = string
  default     = "aqua-agentless-scanner"
  description = "Aqua volume scanning Event Subscriptions Name"
}

variable "aqua_subnet_name" {
  type        = string
  default     = "aqua-agentless-scanner"
  description = "Aqua volume scanning Subnet Name"
}

variable "aqua_volscan_resource_group_name" {
  type        = string
  default     = "aqua-agentless-scanner"
  description = "Aqua volume scanning Resource Group Name"
}

variable "aqua_api_secret" {
  type        = string
  sensitive   = true
  description = "Aqua API secret key"
}

variable "aqua_api_key" {
  type        = string
  sensitive   = true
  description = "Aqua API key"
}

variable "aqua_autoconnect_url" {
  type        = string
  description = "Aqua AutoConnect URL"
}

variable "aqua_configuration_id" {
  type        = string
  description = "Aqua configuration id"
}

variable "aqua_network_security_group_name" {
  type        = string
  description = "Aqua volume scanning Network Security Group Name"
}

variable "aqua_virtual_network_name" {
  type        = string
  description = "Aqua volume scanning Virtual Network Name"
}

variable "aqua_volscan_scan_locations" {
  type        = list(string)
  description = "List of Azure locations to scan"
}

