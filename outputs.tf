<<<<<<< HEAD
output "existing_vm_names" {
  value = var.existing_vm_names
}

output "admin_password" {
  value = random_password.admin_password.result
}

=======
#ad_vm_module
output "existing_resource_group_name" {
  value = module.ad_vm_module.existing_resource_group_name
}

output "existing_resource_group_name2" {
  value = module.ad_vm_module.existing_resource_group_name2
}

output "existing_virtual_network_name" {
  value = module.ad_vm_module.existing_virtual_network_name
}

output "existing_subnet_name" {
  value = module.ad_vm_module.existing_subnet_name
}

#appsrv_vm_module
output "existing_resource_group_name" {
  value = module.appsrv_vm_module.existing_resource_group_name
}

output "existing_resource_group_name2" {
  value = module.appsrv_vm_module.existing_resource_group_name2
}

output "existing_virtual_network_name" {
  value = module.appsrv_vm_module.existing_virtual_network_name
}

output "existing_subnet_name" {
  value = module.appsrv_vm_module.existing_subnet_name
}

output "admin_password" {
  value       = random_password.admin_password.result
  sensitive   = true
  description = "Auto-generated admin password for the virtual machines"
}
>>>>>>> 8ec790c2d3110810d0994773d175308bdd99f48f
