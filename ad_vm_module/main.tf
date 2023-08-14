resource "azurerm_network_interface" "ad_nics" {
  count               = length(var.ad_nic_names)
  name                = var.ad_nic_names[count.index]
  location            = var.location
  resource_group_name = var.existing_resource_group_name2

  ip_configuration {
    name                          = "ipconfig-${count.index}"
    subnet_id                     = azurerm_subnet.AD-SUBNET-SC.id  
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_virtual_machine" "ad_vms" {
  for_each            = toset(var.ad_vm_names)

  name                = each.key
  location            = var.location
  resource_group_name = var.existing_resource_group_name

  network_interface_ids = [azurerm_network_interface.ad_nics[var.ad_vm_nic_map[each.key]].id]

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
    admin_password       = random_password.admin_password.result
  }

  os_profile_windows_config {
    provision_vm_agent  = true
  }

  boot_diagnostics {
    enabled             = true
    storage_uri = "https://susserbankbootdiag.file.core.windows.net/"
  }

  tags = {
    ServerType = "Active Directory"
    buildby     = "Stormy Winters"
    BuildDate   = "08/14/2023"
  }
}