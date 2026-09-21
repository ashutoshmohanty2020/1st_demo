terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.1.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "ashurg1"
    storage_account_name = "mystorageashu"
    container_name       = "mycontainer"
    key                  = "prod.terraform.tfstate"
  }

}

provider "azurerm" {
  features {}

  subscription_id = "b4792030-6823-4b97-b938-ebe87ac294c4"
}

