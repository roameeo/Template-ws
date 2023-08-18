#Active Directory
module "ad_vm_module" {
  source = "./ad_vm_module"

  existing_resource_group_name = var.existing_resource_group_name
  existing_resource_group_name2 = var.existing_resource_group_name2
  existing_virtual_network_name = var.existing_virtual_network_name
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

  existing_resource_group_name = var.existing_resource_group_name
  existing_resource_group_name2 = var.existing_resource_group_name2
  existing_virtual_network_name = var.existing_virtual_network_name
 
 #Subnets
  data "azurerm_subnet" "existing_subnet" {
    name                 = var.existing_subnet_name3
    virtual_network_name = var.existing_virtual_network_name
    resource_group_name  = var.existing_resource_group_name2
  }

  resource "azurerm_network_interface" "appsrv_nics" {
    for_each           = toset(var.appsrv_nic_names)
    name               = each.key
    location           = var.location
    resource_group_name = var.existing_resource_group_name2

  ip_configuration {
    name                          = "ipconfig-${each.key}"
    subnet_id                     = azurerm_virtual_network.existing_subnet_name3.subnets["APPSERV-SUBNET-SC"].id
    private_ip_address_allocation = "Dynamic"
  }
}

  #admin_password
  admin_password = random_password.admin_password.result 
}