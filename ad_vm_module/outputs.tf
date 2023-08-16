output "ad_vms_names" {
  value       = azurerm_virtual_machine.ad_vms[*].name
  description = "Names of the Active Directory VMs"
}

output "ad_vms_ids" {
  value       = azurerm_virtual_machine.ad_vms[*].id
  description = "IDs of the Active Directory VMs"
}

output "ad_nics_ids" {
  value       = azurerm_network_interface.ad_nics[*].id
  description = "IDs of the Network Interfaces for Active Directory VMs"
}

output "admin_password" {
  value       = var.admin_password
  sensitive   = true
  description = "Auto-generated admin password for the virtual machine"
}
