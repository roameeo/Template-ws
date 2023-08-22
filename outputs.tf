output "existing_vm_names" {
  value = var.existing_vm_names
}

output "admin_password" {
  value = random_password.admin_password.result
}