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