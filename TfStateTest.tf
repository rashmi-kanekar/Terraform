terraform {
  backend "azurerm" {
    storage_account_name  = "deletestorage102"
    container_name        = "tstate"
    key                   = "terraform.tfstate"
    access_key = "pw2aExiKen7y82grcEgRHlHUuGJmZkJK7B+fEhC4EM+FqlRdAWFqoA0xLhACxFwWElKmZ4uiGZptDFIcLfgvYA=="
  }
}

resource "azurerm_resource_group" "state-demo-secure1" {
  name     = "state-demo1"
  location = "eastus"
}
