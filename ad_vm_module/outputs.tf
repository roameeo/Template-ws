output "ad_vms" {
  value = azurerm_virtual_machine.ad_vms
}

output "ad_nics" {
  value = azurerm_network_interface.ad_nics
}

output "admin_password" {
  value       = var.admin_password
  sensitive   = true
  description = "Auto-generated admin password for the virtual machine"
}
