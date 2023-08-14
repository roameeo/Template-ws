output "resource_group_name" {
  value = [azurerm_resource_group.rg.name,
    azurerm_resource_group.rg2.name,
    azurerm_resource_group.rg3.name]
}

output "virtual_network_id" {
  value = azurerm_virtual_network.vnet.name
}

output "subnet_id" {
  value = [
    azurerm_subnet.subnet1.name,
    azurerm_subnet.subnet3.name,
    azurerm_subnet.subnet3.name,
    azurerm_subnet.subnet4.name,
    azurerm_subnet.subnet5.name,
    azurerm_subnet.subnet6.name,
    azurerm_subnet.subnet7.name,
    azurerm_subnet.subnet8.name,
    azurerm_subnet.subnet9.name,
    azurerm_subnet.subnet10.name,
    azurerm_subnet.subnet11.name,
    azurerm_subnet.subnet12.name,
    azurerm_subnet.subnet13.name,
    azurerm_subnet.subnet14.name,
    azurerm_subnet.subnet15.name,
    azurerm_subnet.subnet16.name,
    azurerm_subnet.subnet17.name,
    azurerm_subnet.subnet18.name,
    azurerm_subnet.subnet19.name,
    azurerm_subnet.subnet20.name ] 
}



output "nic_names" {
  value = [for key, _ in azurerm_virtual_machine.vms : azurerm_network_interface.nic[var.nic_names[key]].name]
}

output "ad_nic_names" {
  value = [for key, _ in azurerm_virtual_machine.ad_vms : azurerm_network_interface.ad_nics[var.ad_nic_names[key]].name]
}

output "admin_password" {
  value       = random_password.admin_password.result
  sensitive   = true
  description = "Auto-generated admin password for the virtual machine"
}