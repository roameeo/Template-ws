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

variable "existing_subnet_name3_from_state" {
  type    = string
  default = null
}

variable "location" {
  type    = string
  default = "South Central US"
}

variable "appsrv_vm_names" {
  type    = list(string)
  default = ["AXIOM01", "AXIOMSB01", "KAS01", "PL01", "SF01", "SFSB01", "SYN01", "VERA01"]
  }

variable "appsrv_nic_names" {
  type    = list(string)
  default = ["axiom01-nic", "axiomsb01-nic", "kas01-nic", "pl01-nic", "sf01-nic", "sfsb01-nic", "syn01-nic", "vera01-nic"]
	} 

variable "appsrv_vm_nic_map" {
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

variable "admin_password" {
  type = string
}