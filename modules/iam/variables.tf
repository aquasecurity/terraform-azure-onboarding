variable "aqua_bucket_name" {
  type        = string
  description = "Aqua Bucket Name"
}

variable "onboarding_type" {
  type        = string
  description = "The type of onboarding"
}

variable "tenant_id" {
  type        = string
  description = "Tenant ID"
}

variable "management_group_id" {
  type        = string
  description = "Aqua Management Group ID"
}

variable "subscription_id" {
  type        = string
  description = "Subscription ID"
}

variable "aqua_cspm_role_name" {
  type        = string
  description = "Aqua Auto Discovery Scanner Role Name"
}

variable "aqua_registry_scanner_role_name" {
  type        = string
  description = "Aqua Registry Scanner Role Name - The default value will be calculated as 'Aqua_Registry_Scanner_Role_<subscription_id>'"
  default     = ""
}

variable "aqua_serverless_scanner_role_name" {
  type        = string
  description = "Aqua Serverless Scanner Role Name - The default value will be calculated as 'Aqua_Serverless_Scanner_Role_<subscription_id>'"
  default     = ""
}

variable "registry_scanning_deployment" {
  type        = bool
  description = "Defines whether resources related to registry scanning will be created"
  default     = true
}

variable "serverless_scanning_deployment" {
  type        = bool
  description = "Defines whether resources related to serverless scanning will be created"
  default     = true
}

variable "volume_scanning_deployment" {
  type        = bool
  description = "Defines whether resources related to volume (agentless) scanning will be created"
  default     = true
}

variable "principal_id" {
  type        = string
  description = "The ID of the Service Principal to assign the Role Definition to"
}