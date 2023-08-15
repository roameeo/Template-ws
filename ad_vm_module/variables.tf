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
