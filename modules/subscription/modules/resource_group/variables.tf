variable "aqua_volscan_resource_group_name" {
  type        = string
  description = "Aqua volume scanning Resource Group Name"
}

variable "aqua_volscan_resource_group_location" {
  type        = string
  description = "Aqua volume scanning Resource Group Location"
}

variable "resource_group_tags" {
  type        = map(string)
  description = "Resource Group Tags"
}