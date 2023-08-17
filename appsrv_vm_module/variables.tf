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

variable "existing_subnet_name3" {
  type = string
  default = "APPSERVERS-SUBNET-SC"
}

variable "location" {
  type    = string
  default = "South Central US"
}

variable "vm_names" {
  type    = list(string)
  default = ["AXIOM01", "AXIOMSB01", "KAS01", "PL01", "SF01", "SFSB01", "SYN01", "VERA01"]
  }

variable "nic_names" {
  type    = list(string)
  default = ["axiom01-nic", "axiomsb01-nic", "kas01-nic", "pl01-nic", "sf01-nic", "sfsb01-nic", "syn01-nic", "vera01-nic"]
	}

variable "vm_nic_map" {
  type = map(string)
  default = {
    "AXIOM01"   = "axiom01-nic"
    "AXIOMSB01" = "axiomsb01-nic"
    "KAS01"     = "kas01-nic"
    "PL01"      = "pl01-nic"
    "SF01"      = "sf01-nic"
    "SFSB01"    = "sfsb01-nic"
    "SYN01"     = "syn01-nic"
    "VERA01"    = "vera01-nic"
  }
}