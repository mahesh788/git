resource "azurerm_storage_account" "b32tfbackend" {
  name                     = "b32tfbackend"
  resource_group_name      = azurerm_resource_group.rg1.name
  location                 = azurerm_resource_group.rg1.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    Env   = var.env
    Batch = var.batch
  }
}