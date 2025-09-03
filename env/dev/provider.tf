terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.42.0"
    }
  }
  backend "azurerm" {
    resource_group_name   = "backend-rg"
    storage_account_name  = "backendstgstg"
    container_name        = "backend-container"
    key                   = "dev.tfstate"
  }
}

provider "azurerm" {
  features {}
  subscription_id = "a87c6699-9b7e-4873-a0c4-8660499ba9ea"
}