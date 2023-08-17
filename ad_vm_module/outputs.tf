output "ad_vm_names1" {
  value       = azurerm_virtual_machine.existing_vm1
  description = "Names of the Active Directory VMs"
}

output "ad_vm_names2" {
  value       = azurerm_virtual_machine.existing_vm2
  description = "Network Interfaces for Active Directory VMs"
}

output "ad_vm_names3" {
  value       = azurerm_virtual_machine.existing_vm3
  description = "Network Interfaces for Active Directory VMs"
}
