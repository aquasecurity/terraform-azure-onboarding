variable "tags" {
  type        = map(string)
  description = "Tags"
}

variable "aqua_volscan_scan_locations" {
  type        = list(string)
  description = "Aqua list of volume scanning locations"
}

variable "aqua_volscan_resource_group_name" {
  type        = string
  description = "Aqua volume scanning Resource Group Name"
}

variable "aqua_virtual_network_name" {
  type        = string
  description = "Aqua volume scanning virtual network name"
}

variable "aqua_network_security_group_name" {
  type        = string
  description = "Aqua volume scanning network security group name"
}

variable "aqua_subnet_name" {
  type        = string
  description = "Aqua volume scanning subnet name"
}
