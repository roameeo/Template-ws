module "ad_vm_module" {
  source = "ad_vm_module"  # Adjust the path accordingly

  existing_resource_group_name   = "SCUS-PRD-RSG"
  existing_resource_group2       = "SCUS-PRD-MGMT"
  existing_virtual_network_name  = "SB-VNET01-SC"
  existing_subnet_name           = "AD-SUBNET-SC"
  
  ad_vm_names = ["DC01", "DC02", "CA01"]
  ad_nic_names = ["dc01-nic", "dc02-nic", "ca01-nic"]
  
  ad_vm_nic_map = {
    "DC01" = "dc01-nic"
    "DC02" = "dc02-nic"
    "CA01" = "ca01-nic"
  }
  
  location = "South Central US"
}