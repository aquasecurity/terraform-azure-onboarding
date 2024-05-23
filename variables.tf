variable "onboarding_type" {
  type = string
  validation {
    condition     = var.onboarding_type == "single-subscription" || var.onboarding_type == "management-group"
    error_message = "Only 'single-subscription' or 'management-group' onboarding types are supported"
  }
  description = "The type of onboarding. Valid values are 'single-subscription' or 'management-group' onboarding types"
}

variable "aqua_bucket_name" {
  description = "Aqua Bucket Name"
  type        = string
  validation {
    condition     = length(var.aqua_bucket_name) > 0
    error_message = "Aqua Bucket Name must not be empty"
  }
}

variable "management_group_id" {
  type        = string
  default     = ""
  description = "Aqua Management Group ID - Relevant when onboarding_type is management-group"
}

variable "aqua_custom_tags" {
  type        = map(string)
  default     = {}
  description = "Client additional resource tags"
}

variable "aqua_volscan_resource_group_name" {
  type        = string
  default     = "aqua-agentless-scanner"
  description = "Aqua volume scanning Resource Group Name"
}

variable "aqua_volscan_resource_group_location" {
  type        = string
  default     = "eastus"
  description = "Aqua volume scanning Resource Group Location"
}

variable "aqua_cspm_role_name" {
  type        = string
  default     = ""
  description = "Aqua AutoConnect Scanner Role Name - The default value will be calculated as 'Aqua_Auto_Discovery_Scanner_Role_<subscription_id>'"
}

variable "create_network" {
  type        = bool
  default     = true
  description = "Toggle to create network resources"
}

variable "aqua_volscan_scan_locations" {
  type = list(string)
  default = [
    "eastus",
    "eastus2",
    "southcentralus",
    "westus2",
    "westus3",
    "australiaeast",
    "southeastasia",
    "northeurope",
    "swedencentral",
    "uksouth",
    "westeurope",
    "centralus",
    "southafricanorth",
    "centralindia",
    "eastasia",
    "japaneast",
    "koreacentral",
    "canadacentral",
    "francecentral",
    "germanywestcentral",
    "norwayeast",
    "switzerlandnorth",
    "uaenorth",
    "brazilsouth",
    "qatarcentral",
    "northcentralus",
    "westus",
    "westcentralus",
    "australiacentral",
    "australiasoutheast",
    "japanwest",
    "koreasouth",
    "southindia",
    "westindia",
    "canadaeast",
    "ukwest"
  ]
  description = "List of Azure locations to scan - by default, all regions are selected"
}

variable "aqua_virtual_network_name" {
  type        = string
  default     = "aqua-agentless-scanner"
  description = "Aqua volume scanning Virtual Network Name"
}

variable "aqua_network_security_group_name" {
  type        = string
  default     = "aqua-agentless-scanner"
  description = "Aqua volume scanning Network Security Group Name"
}

variable "aqua_subnet_name" {
  type        = string
  default     = "aqua-agentless-scanner"
  description = "Aqua volume scanning Subnet Name"
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

variable "show_outputs" {
  type        = bool
  default     = false
  description = "Toggle to show summary outputs after deployment"
}

variable "aqua_autoconnect_url" {
  type        = string
  description = "Aqua AutoConnect URL"
}

variable "aqua_cspm_url" {
  type        = string
  description = "Aqua CSPM url"
}

variable "aqua_volscan_api_url" {
  type        = string
  description = "Aqua Event Subscription webhook URL"
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

variable "aqua_configuration_id" {
  type        = string
  description = "Aqua configuration ID"
}

variable "aqua_cspm_group_id" {
  type        = string
  description = "CSPM group ID"
}
