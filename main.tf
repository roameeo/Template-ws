resource "azurerm_resource_group" "rg" {
  name     = "SCUS-PRD-RSG"  # Set to the name of your existing resource group
  location = "South Central US"
}

resource "azurerm_virtual_network" "vnet" {
  name                = "SB-VNET01-SC"  #  Set to the name of the existing virtual network
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
  name     = "SB-RESOURCEGROUP-NC"  # Set to the name of your existing resource group
  location = "North Central US"
}

resource "azurerm_virtual_network" "vnet2" {
  name                = "SB-VNET02-NC"   # Set to the name of the existing virtual network
  address_space       = ["10.16.0.0/16"]
  location            = azurerm_resource_group.rg2.location
  resource_group_name = azurerm_resource_group.rg2.name
}

resource "azurerm_subnet" "subnet11" {
  name                 = "DMZ-SUBNET-NC"
  resource_group_name  = azurerm_resource_group.rg2.name
  virtual_network_name = azurerm_virtual_network.vnet2.name
  address_prefixes     = ["10.16.1.0/24"]  # Replace with the appropriate address prefix
}

resource "azurerm_subnet" "subnet12" {
  name                 = "AD-SUBNET-NC"
  resource_group_name  = azurerm_resource_group.rg2.name
  virtual_network_name = azurerm_virtual_network.vnet2.name
  address_prefixes     = ["10.16.0.0/24"]  # Replace with the appropriate address prefix
}

resource "azurerm_subnet" "subnet13" {
  name                 = "APPSERVERS-SUBNET-NC"
  resource_group_name  = azurerm_resource_group.rg2.name
  virtual_network_name = azurerm_virtual_network.vnet2.name
  address_prefixes     = ["10.16.3.0/24"]  # Replace with the appropriate address prefix
}

resource "azurerm_subnet" "subnet14" {
  name                 = "INFOSEC-SUBNET-NC"
  resource_group_name  = azurerm_resource_group.rg2.name
  virtual_network_name = azurerm_virtual_network.vnet2.name
  address_prefixes     = ["10.16.6.0/24"]  # Replace with the appropriate address prefix
}

resource "azurerm_subnet" "subnet15" {
  name                 = "SQLSERVERS-SUBNET-NC"
  resource_group_name  = azurerm_resource_group.rg2.name
  virtual_network_name = azurerm_virtual_network.vnet2.name
  address_prefixes     = ["10.16.4.0/24"]  # Replace with the appropriate address prefix
}

resource "azurerm_subnet" "subnet16" {
  name                 = "ITTOOLS-SUBNET-NC"
  resource_group_name  = azurerm_resource_group.rg2.name
  virtual_network_name = azurerm_virtual_network.vnet2.name
  address_prefixes     = ["10.16.5.0/24"]  # Replace with the appropriate address prefix
}

resource "azurerm_subnet" "subnet17" {
  name                 = "NETSERVERS-SUBNET-NC"
  resource_group_name  = azurerm_resource_group.rg2.name
  virtual_network_name = azurerm_virtual_network.vnet2.name
  address_prefixes     = ["10.16.2.0/24"]  # Replace with the appropriate address prefix
}

resource "azurerm_subnet" "subnet18" {
  name                 = "FILESHARE-SUBNET-NC"
  resource_group_name  = azurerm_resource_group.rg2.name
  virtual_network_name = azurerm_virtual_network.vnet2.name
  address_prefixes     = ["10.16.7.0/24"]  # Replace with the appropriate address prefix
}

resource "azurerm_subnet" "subnet19" {
  name                 = "MOVEIT-SUBNET-NC"
  resource_group_name  = azurerm_resource_group.rg2.name
  virtual_network_name = azurerm_virtual_network.vnet2.name
  address_prefixes     = ["10.16.8.0/24"]  # Replace with the appropriate address prefix
}

resource "azurerm_subnet" "subnet20" {
  name                 = "JH-SUBNET-NC"
  resource_group_name  = azurerm_resource_group.rg2.name
  virtual_network_name = azurerm_virtual_network.vnet2.name
  address_prefixes     = ["10.16.9.0/24"]  # Replace with the appropriate address prefix
}

#imported vm's
resource "azurerm_virtual_machine" "sccm_vm" {
  count                 = 1  # Set this to 1 if you're importing a single VM
  name                  = "SCCM01"  # The name of the imported VM
  location              = "South Central US"  # The location of the VM
  resource_group_name   = "SCUS-PRD-RSG"  # The name of the resource group where the VM is located
  network_interface_ids = ["/subscriptions/ff8edce8-ef8b-4cd3-8a74-ef12aeb55a5f/resourceGroups/SCUS-PRD-RSG/providers/Microsoft.Network/networkInterfaces/sccm0177"]
  
  vm_size              = "Standard_D4s_v5"
  delete_os_disk_on_termination = true

  storage_os_disk {
    name              = "SCCM01_OsDisk_1_2f670f15846e40a2a9c842555f72542e"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_SSD_LRS"
  }

  os_profile {
    computer_name  = "SCCM01"
    admin_username = "adminuser"
  }

  source_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2022-Datacenter-AzureEdition"
    version   = "latest"
  }

  boot_diagnostics {
    enabled             = true
    storage_uri = "https://susserbankbootdiag.file.core.windows.net/"
  }

  tags = {
    Application = "SCCM"
    buildby     = "Joshua Ellison"
    BuildDate   = "08/09/2023"
  }
}
