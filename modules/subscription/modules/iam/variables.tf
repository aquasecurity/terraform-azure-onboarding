variable "env" {
  type        = string
  description = "Environment"
}

variable "aqua_cspm_role_name" {
  type        = string
  description = "Aqua Auto Discovery Scanner Role Name"
}

variable "cspm_role_scope" {
  type        = string
  description = "The scope at which the Role Definition applies to"
}

variable "principal_id" {
  type        = string
  description = "The ID of the Service Principal to assign the Role Definition to"
}

variable "subscription_id" {
  type        = string
  description = "Subscription ID"
}

variable "aqua_volscan_resource_group_name" {
  type        = string
  description = "Aqua volume scanning Resource Group Name"
}