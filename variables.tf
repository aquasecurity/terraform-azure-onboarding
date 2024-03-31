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

variable "application_name" {
  type        = string
  default     = ""
  description = "Aqua Auto Discovery Application Name"
}

variable "application_password_name" {
  type        = string
  default     = "rbac"
  description = "Aqua Event Application Password Name"
}

variable "application_password_end_date" {
  type        = string
  default     = "262980h" # 30 years
  description = "Aqua Event Application End Date"
}

variable "aqua_deployment_method" {
  type        = string
  default     = "Terraform"
  description = "Aqua deployment method"
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

variable "aqua_create_network" {
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

variable "virtual_network_address_space" {
  type        = list(string)
  default     = ["10.1.0.0/16"]
  description = "Aqua volume scanning virtual network address space"
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

variable "subnet_address_prefixes" {
  type        = list(string)
  default     = ["10.1.0.0/18"]
  description = "Aqua volume scanning subnet address prefixes"
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

variable "event_subscription_filter" {
  type        = string
  default     = "-aas"
  description = "Aqua Event Subscription Filter"
}

variable "event_subscription_delivery_name" {
  type        = string
  default     = "x-vs-api-key"
  description = "Aqua Event Subscription delivery name"
}

variable "event_subscription_delivery_type" {
  type        = string
  default     = "Static"
  description = "Aqua Event Subscription delivery type"
}

variable "is_custom_name_vol_scan" {
  type        = string
  default     = "false"
  description = "Is custom name vol scan"
}

variable "get_signature_internal_path" {
  type        = string
  default     = "/v2/internal_apikeys"
  description = "Aqua signature internal path"
}

variable "get_signature_cspm_path" {
  type        = string
  default     = "/v2/keys"
  description = "Aqua signature CSPM path"
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