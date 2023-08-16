output "ad_vm_names" {
  value       = module.ad_vm_module.ad_vms_names
  description = "Names of the Active Directory VMs"
}

output "ad_nics" {
  value       = module.ad_vm_module.ad_nics
  description = "Network Interfaces for Active Directory VMs"
}

output "admin_password" {
  value       = random_password.admin_password.result
  sensitive   = true
  description = "Auto-generated admin password for the virtual machines"
}
