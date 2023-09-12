provider "azurerm" {
   version = "~> 3.0.2"
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "myTFResourceGroup"
  location = "westus2"
}

output "id"{
  value = data.azurerm_resource_group.rg.id
}
