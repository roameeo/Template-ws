output "ad_vm_names" {
  value       = azurerm_virtual_machine.ad_vms[*].name
  description = "Names of the Active Directory VMs"
}

output "ad_nics" {
  value = azurerm_network_interface.ad_nics
}

output "admin_password" {
  value       = random_password.admin_password.result
  sensitive   = true
  description = "Auto-generated admin password for the virtual machine"
}
