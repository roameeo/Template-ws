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

variable "ad_vm_names" {
  type    = list(string)
  default = ["DC01", "DC02", "CA01"]
}

variable "ad_nic_names" {
  type    = list(string)
  default = ["dc01-nic", "dc02-nic", "ca01-nic"]
}

variable "ad_vm_nic_map" {
  type = map(string)
  default = {
    "DC01" = "dc01-nic"
    "DC02" = "dc02-nic"
    "CA01" = "ca01-nic"
  }
}

variable "admin_password" {
  type = string
}