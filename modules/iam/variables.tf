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

variable "principal_id" {
  type        = string
  description = "The ID of the Service Principal to assign the Role Definition to"
}