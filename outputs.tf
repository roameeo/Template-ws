output "ad_vm_names" {
  value = module.ad_vm_module.ad_vm_names
}

output "ad_vm_ids" {
  value = module.ad_vm_module.ad_vms[*].id
}

output "ad_nic_ids" {
  value = module.ad_vm_module.ad_nics[*].id
}