output "ad_vm_names" {
  value       = module.ad_vm_module.ad_vm_names
  description = "Names of the Active Directory VMs"
}

output "ad_vm_ids" {
  value       = module.ad_vm_module.ad_vms[*].id
  description = "IDs of the Active Directory VMs"
}

output "ad_nic_ids" {
  value       = module.ad_vm_module.ad_nics[*].id
  description = "IDs of the Network Interfaces for Active Directory VMs"
}
