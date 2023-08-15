module "ad_vm_module" {
  source = "./ad_vm_module"

  existing_resource_group_name  = var.existing_resource_group_name
  existing_resource_group_name2 = var.existing_resource_group_name2
  ad_vm_names                   = var.ad_vm_names
  ad_nic_names                  = var.ad_nic_names
  ad_vm_nic_map                 = var.ad_vm_nic_map
}

output "admin_password" {
  value       = random_password.admin_password.result
  sensitive   = true
  description = "Auto-generated admin password for the virtual machines"
}