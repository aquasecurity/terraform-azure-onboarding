
variable "management_group_id" {
  type        = string
  description = "Management Group ID - Relevant when onboarding_type is management-group"
}

variable "subscription_ids" {
  type        = list(string)
  description = "List of the Management Group subscriptions"
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

