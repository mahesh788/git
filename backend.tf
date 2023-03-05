terraform {
  backend "azurerm" {
    resource_group_name  = "rg001"
    storage_account_name = "b32tfbackend"
    container_name       = "tfstate"
    key                  = "b32.tfstate"
  }
}
