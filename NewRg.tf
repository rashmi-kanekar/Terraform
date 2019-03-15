resource "azurerm_resource_group" "test" {
  name     = "testResourceGroup1"
  location = "North Europe"

  tags {
    environment = "Production"
  }
}