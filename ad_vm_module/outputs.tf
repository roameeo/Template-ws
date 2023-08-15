output "ad_vms_names" {
  value = azurerm_virtual_machine.ad_vms_names
}

output "ad_nics" {
  value = var.ad_nic_names
}

output "admin_password" {
  value       = random_password.admin_password.result
  sensitive   = true
  description = "Auto-generated admin password for the virtual machine"
}