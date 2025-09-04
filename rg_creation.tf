terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=4.0"
    }
  }
  backend "azurerm" {
    resource_group_name   = "souravaction"
    storage_account_name  = "souravstorageaction"
    container_name        = "souravcontainer"
    key                   = "action.tfstate"
    
  }
}

provider "azurerm" {
  # Configuration options
  features {}
  subscription_id= "8b10287d-12d6-41e3-b62c-33457c006e96"
}


resource "azurerm_resource_group" "rg-souravkk" {
  name     = "souravdev"
  location = "centralindia"
}
