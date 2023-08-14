output "admin_password" {
  value       = random_password.password.result
  sensitive   = true
  description = "Auto-generated admin password for the virtual machine"
}

