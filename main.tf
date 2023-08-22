# Fetch values from the remote state file
data "terraform_remote_state" "Susser-Bank" {
  backend = "local"  # Use the appropriate backend configuration

  config = {
    path = ".terraform.tfstate"  # Adjust the path to your state file
  }
}

#Active Directory
module "ad_vm_module" {
  source = "./ad_vm_module"

  # existing_resource_group_name_from_state = data.terraform_remote_state.Susser-Bank.outputs.existing_resource_group_name
  # existing_resource_group_name2_from_state = data.terraform_remote_state.Susser-Bank.outputs.existing_resource_group_name2
  # existing_virtual_network_name_from_state = data.terraform_remote_state.Susser-Bank.outputs.existing_virtual_network_name
  # existing_subnet_name_from_state = data.terraform_remote_state.Susser-Bank.outputs.existing_subnet_name
}

#Application servers
module "appsrv_vm_module" {
  source = "./appsrv_vm_module"

  # Reference the state file to fetch resource information
  existing_resource_group_name_from_state = data.terraform_remote_state.Susser-Bank.outputs.existing_resource_group_name
  existing_resource_group_name2_from_state = data.terraform_remote_state.Susser-Bank.outputs.existing_resource_group_name2
  existing_virtual_network_name_from_state = data.terraform_remote_state.Susser-Bank.outputs.existing_virtual_network_name
  existing_subnet_name3_from_state = data.terraform_remote_state.Susser-Bank.outputs.existing_subnet_name3

  location         = var.location
}