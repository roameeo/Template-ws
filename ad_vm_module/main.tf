data "terraform_remote_state" "Susser-Bank" {
  backend = "local"  # Use the appropriate backend configuration

  config = {
    path = "terraform.tfstate" 
  }
}

data "azurerm_virtual_network" "existing_virtual_network_name" {
  name                = var.existing_virtual_network_name_from_state
  resource_group_name = var.existing_resource_group_name_from_state
}

data "azurerm_subnet" "existing_subnet_name" {
  name                 = var.existing_subnet_name2_from_state
  virtual_network_name = var.existing_virtual_network_name_from_state
  resource_group_name  = var.existing_resource_group_name_from_state
}

#locals {
# existing_vm_names = [for vm in data.azurerm_virtual_machine.existing_vms : vm.name]
# }

# Now you can access the list of existing VM names as locals.existing_vm_names
