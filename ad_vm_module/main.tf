resource "azurerm_subnet" "existing_subnet" {
  name                 = var.existing_subnet_name
  resource_group_name = var.existing_resource_group_name2
  virtual_network_name = var.existing_virtual_network_name

  address_prefixes = ["10.15.3.0/24"]  # Replace this with your desired subnet IP range
}

resource "azurerm_virtual_machine" "existing_vm1" {
  name                = "DC01"
  location            = var.location
  resource_group_name = var.existing_resource_group_name
  network_interface_ids = "dc01-nic"
  vm_size               = "Standard_D4s_v3"
  delete_os_disk_on_termination = true
}

resource "azurerm_virtual_machine" "existing_vm2" {
  name                = "DC02"
  location            = var.location
  resource_group_name = var.existing_resource_group_name
  network_interface_ids = "dc02-nic"
  vm_size               = "Standard_D4s_v3"
  delete_os_disk_on_termination = true
}

resource "azurerm_virtual_machine" "existing_vm3" {
  name                = "CA01"
  location            = var.location
  resource_group_name = var.existing_resource_group_name
  network_interface_ids = "ca01-nic"
  vm_size               = "Standard_D4s_v3"
  delete_os_disk_on_termination = true
}
