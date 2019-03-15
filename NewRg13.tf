resource "azurerm_resource_group" "test123" {
  name     = "testResourceGroup133"
  location = "North Europe"

  tags {
    environment = "Production"
  }
}