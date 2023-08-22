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

variable "existing_network_interface" {
  type = string
  default = "dc01-nic"
}

variable "existing_network_interface2" {
  type = string
  default = "dc02-nic"
}

variable "exisiting_network_interface3"{
  type = string
  default = "ca01-nic"
}

variable "existing_vm_names" {
  type    = list(string)
  default = []
}

variable "location" {
  type    = string
  default = "South Central US"
}

variable "admin_password" {
  type = string
}