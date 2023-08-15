variable "existing_resource_group_name" {
  type    = string
  description = "Existing resource group for VMs"
}

variable "existing_resource_group_name2" {
  type    = string
  description = "Existing resource group for networking"
}

variable "existing_virtual_network_name" {
  type    = string
  description = "Existing virtual network"
}

variable "existing_subnet_name" {
  type    = string
  description = "Existing subnet"
}

variable "ad_vm_names" {
  type    = list(string)
  description = "List of VM names"
}

variable "ad_nic_names" {
  type    = list(string)
  description = "List of NIC names"
}

variable "ad_vm_nic_map" {
  type = map(string)
  description = "Map of VM names to NIC names"
}

variable "location" {
  type    = string
  default = "South Central US"
}
