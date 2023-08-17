module "ad_vm_module" {
  source = "./ad_vm_module"

 #Resource Groups
  existing_resource_group_name = var.existing_resource_group_name
  existing_resource_group_name2 = var.existing_resource_group_name2
 
 #Virtual Networks
  existing_virtual_network_name = var.existing_virtual_network_name
 
#Subnets
  existing_subnet_name = var.existing_subnet_name

#Virtual Machine information
  #ad_vm_module
  ad_vm_names = var.ad_vm_names
  ad_nic_names = var.ad_nic_names
  ad_vm_nic_map = var.ad_vm_nic_map

  #appserv_vm_module



#Admin password
  admin_password = random_password.admin_password.result
}