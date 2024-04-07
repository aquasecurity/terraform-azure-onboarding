variable "aqua_management_group_id" {
  type        = string
  default     = ""
  description = "Management Group ID"
}

variable "aqua_custom_tags" {
  type        = map(string)
  default     = {}
  description = "Client Additional Resource Tags"
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
  description = "Aqua Auto Discovery Scanner Role Name -  If not provided, the default value is set to 'Aqua_Auto_Discovery_Scanner_Role_<subscription_id>' in the 'aqua_cspm_role_name' local"
}

variable "create_network" {
  type        = bool
  default     = true
  description = "Whether to create the network resources"
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
  description = "List of Azure locations to scan"
}

variable "aqua_virtual_network_name" {
  type        = string
  default     = "aqua-agentless-scanner"
  description = "Aqua volume scanning virtual network name"
}

variable "aqua_network_security_group_name" {
  type        = string
  default     = "aqua-agentless-scanner"
  description = "Aqua volume scanning network security group name"
}

variable "aqua_subnet_name" {
  type        = string
  default     = "aqua-agentless-scanner"
  description = "Aqua volume scanning subnet name"
}

variable "aqua_system_topics_name" {
  type        = string
  default     = "aqua-agentless-scanner"
  description = "Aqua volume scanning Event Grid System Topic"
}


variable "aqua_event_subscriptions_name" {
  type        = string
  default     = "aqua-agentless-scanner"
  description = "Aqua volume scanning Event Subscriptions Name"
}

variable "is_custom_name_vol_scan" {
  type        = string
  default     = "false"
  description = "Is custom name volume scanning"
}

variable "show_outputs" {
  type        = bool
  default     = false
  description = "Whether to show outputs after deployment"
}

variable "aqua_autoconnect_url" {
  type        = string
  description = "Aqua AutoConnect URL"
}

variable "aqua_volscan_api_url" {
  type        = string
  description = "Aqua Event Subscription webhook url"
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

variable "aqua_configuration_id" {
  type        = string
  description = "Aqua configuration id"
}

variable "aqua_cspm_group_id" {
  type        = string
  description = "CSPM group id"
}
