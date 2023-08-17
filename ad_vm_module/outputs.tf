output "ad_vm_names1" {
  value       = module.ad_vm_module.existing_vm1
  description = "Names of the Active Directory VMs"
}

output "ad_vm_names2" {
  value       = module.ad_vm_module.existing_vm2
  description = "Names of the Active Directory VMs"
}

output "ad_vm_names3" {
  value       = module.ad_vm_module.existing_vm3
  description = "Names of the Active Directory VMs"
}
