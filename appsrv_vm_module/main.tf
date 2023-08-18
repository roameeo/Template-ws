  resource "azurerm_subnet" "existing_subnet_name3" {
  name                = "APPSERV-SUBNET-SC"
  virtual_network_name = var.existing_virtual_network_name
  resource_group_name = var.existing_resource_group_name2
  location            = var.location
  address_prefixes    = ["10.15.3.0/24"] 
  }

resource "azurerm_network_interface" "appsrv_nics" {
  for_each            = toset(var.appsrv_nic_names)
  name                = each.value
  location            = var.location
  resource_group_name = var.existing_resource_group_name2

  ip_configuration {
    name                          = "ipconfig-${each.key}"
    subnet_id                     = data.azurerm_subnet.existing_subnet3.id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_virtual_machine" "appsrv_vms" {
  for_each            = toset(var.appsrv_vm_names)
  name                = each.key
  location            = var.location
  resource_group_name = var.existing_resource_group_name

  network_interface_ids = [azurerm_network_interface.appsrv_nics[var.appsrv_vm_nic_map[each.key]].id]

  vm_size               = "Standard_D4s_v3"
  delete_os_disk_on_termination = true

  storage_os_disk {
    name                = "osdisk-${each.key}"
    caching             = "ReadWrite"
    create_option       = "FromImage"
    managed_disk_type   = "Standard_LRS"
  }

  storage_image_reference {
    publisher           = "MicrosoftWindowsServer"
    offer               = "WindowsServer"
    sku                 = "2022-Datacenter-AzureEdition"
    version             = "latest"
  }

  os_profile {
    computer_name        = each.key
    admin_username       = "azureadmin"
    admin_password       = var.admin_password
  }

  os_profile_windows_config {
    provision_vm_agent  = true
  }

  boot_diagnostics {
    enabled             = true
    storage_uri = "https://susserbankbootdiag.file.core.windows.net/"
  }

  tags = {
    ServerType = "Application Server"
    buildby     = "Stormy Winters"
    BuildDate   = "08/18/2023"
  }
}
