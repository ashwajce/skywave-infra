terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.66.0"
    }
  }
}
provider "azurerm" {
  features {}
}

terraform {
  backend "azurerm" {
    resource_group_name  = "skywave-prod"
    storage_account_name = "skywaveprodtfstate01"
    container_name       = "skywavestate"
    key                  = "prod.tfstate"
  }
}
