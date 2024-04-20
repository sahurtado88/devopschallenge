provider "azurerm" {
  features {
    
  }
}

resource "azurerm_resource_group" "resource_group" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_storage_account" "storage_account" {
  name                     = "${var.storage_account_name}sahr"
  resource_group_name      = azurerm_resource_group.resource_group.name
  location                 = azurerm_resource_group.resource_group.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  account_kind = "StorageV2"

  static_website{
    index_document = "index.html"
    error_404_document = "error.html"
  }  
  tags = {
    environment = var.environment
  }
}