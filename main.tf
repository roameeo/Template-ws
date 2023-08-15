module "ad_vm_module" {
  source = "./ad_vm_module"

  existing_resource_group_name = "SCUS-PRD-RSG"  # Existing resource group for VMs
  existing_resource_group_name2 = "SCUS-PRD-MGMT"  # Existing resource group for networking
  existing_virtual_network_name = "SB-VNET01-SC"  # Existing virtual network
  existing_subnet_name         = "AD-SUBNET-SC"  # Existing subnet
  ad_vm_names                  = ["DC01", "DC02", "CA01"]
  ad_nic_names                 = ["dc01-nic", "dc02-nic", "ca01-nic"]
  ad_vm_nic_map                = {
    "DC01" = "dc01-nic"
    "DC02" = "dc02-nic"
    "CA01" = "ca01-nic"
  }
  location                     = "South Central US"
}