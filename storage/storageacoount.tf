
# Configure the Microsoft Azure Provider
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}

# resource group creation

resource "azurerm_resource_group" "rg" {
  name     = "${var.teamname}-prod"
  location = var.location
}

resource "azurerm_storage_account" "storage" {
  name                     = "${var.teamname}stor"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = var.sku

  tags = {
    environment = "prod"
  }
}

resource "azurerm_storage_container" "conatiner" {
  name                  = "${var.teamname}conatiner"
  storage_account_name  = azurerm_storage_account.storage.name
  container_access_type = "blob"
}



