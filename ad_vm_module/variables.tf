variable "existing_resource_group_name_from_state" {
  type    = string
  default = null
}

variable "existing_resource_group_name2_from_state" {
  type    = string
  default = null
}

variable "existing_virtual_network_name_from_state" {
  type    = string
  default = null
}

variable "existing_subnet_name_from_state" {
  type    = string
  default = null
}

variable "location" {
  type    = string
  default = "South Central US"
}

variable "admin_password" {
  type = string
}