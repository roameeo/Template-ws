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

output "existing_vm_names" {
  value = var.existing_vm_names
}

output "admin_password" {
  value = module.appsrv_vm_module.admin_password
}
