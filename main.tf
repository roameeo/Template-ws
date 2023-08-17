module "ad_vm_module" {
  source = "./ad_vm_module"

 #Resource Groups
  existing_resource_group_name = var.existing_resource_group_name
  existing_resource_group_name2 = var.existing_resource_group_name2
  existing_resource_group_name3 = var.existing_resource_group_name3
  existing_resource_group_name4 = var.existing_resource_group_name4
 
 #Virtual Networks
  existing_virtual_network_name = var.existing_virtual_network_name
  existing_virtual_network_name2 = var.existing_virtual_network_name2

#Subnets
  existing_subnet_name = var.existing_subnet_name
  existing_subnet_name2 = var.existing_subnet_name2
  existing_subnet_name3 = var.existing_subnet_name3
  existing_subnet_name4 = var.existing_subnet_name4
  existing_subnet_name5 = var.existing_subnet_name5
  existing_subnet_name6 = var.existing_subnet_name6
  existing_subnet_name7 = var.existing_subnet_name7
  existing_subnet_name8 = var.existing_subnet_name8
  existing_subnet_name9 = var.existing_subnet_name9
  existing_subnet_name11 = var.existing_subnet_name11
  existing_subnet_name12 = var.existing_subnet_name12
  existing_subnet_name13 = var.existing_subnet_name13
  existing_subnet_name14 = var.existing_subnet_name14
  existing_subnet_name15 = var.existing_subnet_name15
  existing_subnet_name16 = var.existing_subnet_name16
  existing_subnet_name17 = var.existing_subnet_name17
  existing_subnet_name18 = var.existing_subnet_name18
  existing_subnet_name19 = var.existing_subnet_name19

#Virtual Machine information
  #ad_vm_module
  ad_vm_names = var.ad_vm_names
  ad_nic_names = var.ad_nic_names
  ad_vm_nic_map = var.ad_vm_nic_map

  #appserv_vm_module



#Admin password
  admin_password = random_password.admin_password.result
}