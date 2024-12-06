terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.12.0"
    }
  }
}

provider "azurerm" {
  features {}
  # Configuration options
  subscription_id = "${env("ARM_SUBSCRIPTION_ID")}"
  client_id       = "${env("ARM_CLIENT_ID")}"
  client_secret   = "${env("ARM_CLIENT_SECRET")}"
  tenant_id       = "${env("ARM_TENANT_ID")}"
}