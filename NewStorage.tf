resource "azurerm_storage_account" "storageacc1" {
  name                     = "deletestorage102"
  resource_group_name      = "testrg1"
  location                 = "northeurope"
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags {
    environment = "Production"
  }
}
