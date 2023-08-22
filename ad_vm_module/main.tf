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
  network_interface_ids = ["/subscriptions/ff8edce8-ef8b-4cd3-8a74-ef12aeb55a5f/resourceGroups/SCUS-PRD-MGMT/providers/Microsoft.Network/networkInterfaces/dc01-nic"]
  vm_size               = "Standard_D4s_v3"
  delete_os_disk_on_termination = true
  
  storage_os_disk {
  name              = "DC01_OsDisk_1_949a3dcebe9a41998bc308a78ac5566b"
  caching           = "ReadWrite"
  create_option     = "FromImage"
  managed_disk_type = "Standard_LRS"  
  }
}

resource "azurerm_virtual_machine" "existing_vm2" {
  name                = "DC02"
  location            = var.location
  resource_group_name = var.existing_resource_group_name
  network_interface_ids = ["/subscriptions/ff8edce8-ef8b-4cd3-8a74-ef12aeb55a5f/resourceGroups/SCUS-PRD-MGMT/providers/Microsoft.Network/networkInterfaces/dc02-nic"]
  vm_size               = "Standard_D4s_v3"
  delete_os_disk_on_termination = true

    storage_os_disk {
    name              = "DC02_OsDisk_1_263b0ab620cb421c8b1e670d5ab2ad51"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }
} 

resource "azurerm_virtual_machine" "existing_vm3" {
  name                = "CA01"
  location            = var.location
  resource_group_name = var.existing_resource_group_name
  network_interface_ids = ["/subscriptions/ff8edce8-ef8b-4cd3-8a74-ef12aeb55a5f/resourceGroups/SCUS-PRD-MGMT/providers/Microsoft.Network/networkInterfaces/ca01-nic"]
  vm_size               = "Standard_D4s_v3"
  delete_os_disk_on_termination = true

    storage_os_disk {
    name              = "CA01_OsDisk_1_7c3258ae4ed64ec0a9727d871c5a0f7f"
    caching           = "ReadWrite"                               
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }
}
