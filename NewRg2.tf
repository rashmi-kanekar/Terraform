resource "azurerm_resource_group" "test2" {
  name     = "testResourceGroup13"
  location = "Central India"

  tags {
    environment = "Production"
  }
}

output "test2" {
  value = "${azurerm_resource_group.test2.id}" 
}
