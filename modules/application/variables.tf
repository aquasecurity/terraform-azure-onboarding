variable "application_name" {
  type        = string
  description = "Application Name"
}

variable "create_service_principal" {
  type        = bool
  description = "Toggle to create service principal"
}

variable "service_principal_object_id" {
  type        = string
  description = "Service principal object ID associated with the application (in case that var.create_service_principal is false)"
}

variable "application_id" {
  type        = string
  description = "Application ID - represented by the Service principal client ID associated with the application (in case that var.create_service_principal is false)"
}

variable "application_password" {
  type        = string
  sensitive   = true
  description = "Application password (in case that var.create_service_principal is false)"
}