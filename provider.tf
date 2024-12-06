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
  subscription_id = "32aeda66-ab2a-4def-a741-f5de4d78e3d6"
  client_id       = "df6ad4e5-5fdd-488a-a8a3-0ac72186b42a"
  client_secret   = "9KG8Q~HTw~LFvAwVYofSmpQAaIIwkCSksUD5paNG"
  tenant_id       = "cddbcdbb-ec4c-4886-804e-9eb9ff353f15"
}