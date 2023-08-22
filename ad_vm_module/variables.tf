variable "existing_resource_group_name" {
  type = string
  description = "Name of the existing resource group for VMs"
}

variable "existing_resource_group_name2" {
  type = string
  description = "Name of the existing resource group for networking"
}

variable "existing_virtual_network_name" {
  type    = string
  default = "SC-VNET01-SC"
}

variable "existing_subnet_name" {
  type = string
  default = "AD-SUBNET-SC"
}

variable "location" {
  type    = string
  default = "South Central US"
}

variable "admin_password" {
  type = string
}