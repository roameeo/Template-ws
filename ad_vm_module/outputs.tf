output "ad_vm_names" {
  value       = azurerm_virtual_machine.ad_vms
  description = "Names of the Active Directory VMs"
}

output "ad_nics" {
  value       = azurerm_network_interface.ad_nics
  description = "Network Interfaces for Active Directory VMs"
}

output "admin_password" {
  value       = var.admin_password
  sensitive   = true
  description = "Auto-generated admin password for the virtual machine"
}
