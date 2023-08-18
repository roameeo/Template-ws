#Active Directory
module "ad_vm_module" {
  source = "./ad_vm_module"

 #Resource Groups
  existing_resource_group_name = var.existing_resource_group_name
  existing_resource_group_name2 = var.existing_resource_group_name2
 
 #Virtual Networks
  existing_virtual_network_name = var.existing_virtual_network_name
 
#Subnets
  existing_subnet_name = var.existing_subnet_name
}

resource "azurerm_virtual_network" "existing_virtual_network_name2" {
  name                = "SB-VNET-02-NC"
  resource_group_name = var.existing_resource_group_name2
  location            = var.location
  address_space       = ["10.16.0.0/16"] 
}

#Application servers
module "appsrv_vm_module" {
  source = "./appsrv_vm_module"

 #Resource Groups
  existing_resource_group_name = var.existing_resource_group_name
  existing_resource_group_name2 = var.existing_resource_group_name2
 
 #Virtual Networks
  existing_virtual_network_name = var.existing_virtual_network_name
 
 #Subnets
  resource "azurerm_virtual_network" "existing_subnet_name3" {
  name                = "APPSERV-SUBNET-SC"
  resource_group_name = var.existing_resource_group_name2
  location            = var.location
  address_space       = ["10.15.3.0/24"] 
  }

  #admin_password
  admin_password = random_password.admin_password.result 
}