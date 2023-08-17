output "existing_vm1" {
  value       = module.ad_vm_module.existing_vm1
  sensitive   = true
  description = "Names of the Active Directory VMs"
}

output "existing_vm1_id" {
  value       = azurerm_virtual_machine.existing_vm1.id
  description = "ID of the imported VM"
}

output "existing_vm2" {
  value       = module.ad_vm_module.existing_vm2
  sensitive   = true
  description = "Names of the Active Directory VMs"
}

output "existing_vm2_id" {
  value       = azurerm_virtual_machine.existing_vm2.id
  description = "ID of the imported VM"
}

output "existing_vm3" {
  value       = module.ad_vm_module.existing_vm3
  sensitive   = true
  description = "Names of the Active Directory VMs"
}


output "existing_vm3_id" {
  value       = azurerm_virtual_machine.existing_vm3.id
  description = "ID of the imported VM"
}