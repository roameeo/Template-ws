module "ad_vm_module" {
  source = "./ad_vm_module"

  existing_resource_group_name = var.existing_resource_group_name
  existing_resource_group_name2 = var.existing_resource_group_name2
  existing_subnet_name = var.existing_subnet_name
  ad_vm_names = var.ad_vm_names
  ad_nic_names = var.ad_nic_names
  ad_vm_nic_map = var.ad_vm_nic_map
  admin_password = random_password.admin_password.result
}