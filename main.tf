resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = "South Central US"
}

resource "azurerm_virtual_network" "vnet" {
  name                = var.Virtual_network_id
  address_space       = ["10.15.0.0/16"]
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
}

resource "azurerm_subnet" "subnet1" {
  name                 = "DMZ-SUBNET-SC"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["10.15.1.0/24"]  # Replace with the appropriate address prefix
}

resource "azurerm_subnet" "subnet2" {
  name                 = "AD-SUBNET-SC"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["10.15.0.0/24"]  # Replace with the appropriate address prefix
}

resource "azurerm_subnet" "subnet3" {
  name                 = "APPSERVERS-SUBNET-SC"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["10.15.3.0/24"]  # Replace with the appropriate address prefix
}

resource "azurerm_subnet" "subnet4" {
  name                 = "INFOSEC-SUBNET-SC"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["10.15.6.0/24"]  # Replace with the appropriate address prefix
}

resource "azurerm_subnet" "subnet5" {
  name                 = "SQLSERVERS-SUBNET-SC"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["10.15.4.0/24"]  # Replace with the appropriate address prefix
}

resource "azurerm_subnet" "subnet6" {
  name                 = "ITTOOLS-SUBNET-SC"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["10.15.5.0/24"]  # Replace with the appropriate address prefix
}

resource "azurerm_subnet" "subnet7" {
  name                 = "NETSERVERS-SUBNET-SC"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["10.15.2.0/24"]  # Replace with the appropriate address prefix
}

resource "azurerm_subnet" "subnet8" {
  name                 = "FILESHARE-SUBNET-SC"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["10.15.7.0/24"]  # Replace with the appropriate address prefix
}

resource "azurerm_subnet" "subnet9" {
  name                 = "MOVEIT-SUBNET-SC"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["10.15.8.0/24"]  # Replace with the appropriate address prefix
}

resource "azurerm_subnet" "subnet10" {
  name                 = "JH-SUBNET-SC"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["10.15.9.0/24"]  # Replace with the appropriate address prefix
}

resource "azurerm_resource_group" "rg2" {
  name     = var.resource_group_name
  location = "North Central US"
}

resource "azurerm_virtual_network" "vnet2" {
  name                = var.Virtual_network_id
  address_space       = ["10.16.0.0/16"]
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
}

resource "azurerm_subnet" "subnet11" {
  name                 = "DMZ-SUBNET-NC"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["10.16.1.0/24"]  # Replace with the appropriate address prefix
}

resource "azurerm_subnet" "subnet12" {
  name                 = "AD-SUBNET-NC"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["10.16.0.0/24"]  # Replace with the appropriate address prefix
}

resource "azurerm_subnet" "subnet13" {
  name                 = "APPSERVERS-SUBNET-NC"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["10.16.3.0/24"]  # Replace with the appropriate address prefix
}

resource "azurerm_subnet" "subnet14" {
  name                 = "INFOSEC-SUBNET-NC"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["10.16.6.0/24"]  # Replace with the appropriate address prefix
}

resource "azurerm_subnet" "subnet15" {
  name                 = "SQLSERVERS-SUBNET-NC"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["10.16.4.0/24"]  # Replace with the appropriate address prefix
}

resource "azurerm_subnet" "subnet16" {
  name                 = "ITTOOLS-SUBNET-NC"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["10.16.5.0/24"]  # Replace with the appropriate address prefix
}

resource "azurerm_subnet" "subnet17" {
  name                 = "NETSERVERS-SUBNET-NC"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["10.16.2.0/24"]  # Replace with the appropriate address prefix
}

resource "azurerm_subnet" "subnet18" {
  name                 = "FILESHARE-SUBNET-NC"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["10.16.7.0/24"]  # Replace with the appropriate address prefix
}

resource "azurerm_subnet" "subnet19" {
  name                 = "MOVEIT-SUBNET-NC"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["10.16.8.0/24"]  # Replace with the appropriate address prefix
}

resource "azurerm_subnet" "subnet20" {
  name                 = "JH-SUBNET-NC"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["10.16.9.0/24"]  # Replace with the appropriate address prefix
}