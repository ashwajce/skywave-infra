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
    resource_group_name  = "skywaveconsultant-prod"
    storage_account_name = "skywaveconsultantstor"
    container_name       = "skywaveconsultantconatiner"
    key                  = "prod.tfstate"
  }
}
