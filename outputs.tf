# Output the VM names and IP addresses
output "existing_vm_info" {
  value = {
    for vm in data.azurerm_virtual_machine.existing_vms :
    vm.name => {
      ip_address = vm.network_interface_ids[0].private_ip_address
    }
  }
}

output "existing_vm_names" {
  value = module.ad_vm_module.existing_vm_names
}

output "existing_vm_ips" {
  value = module.ad_vm_module.existing_vm_ips
}


output "admin_password" {
  value = random_password.admin_password.result
}