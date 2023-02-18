provider "azurerm" {
  features {}
}

terraform {
  required_version = ">= 1.2.8"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 2.78"
    }

  }
}

resource "azurerm_resource_group" "resource_group" {
  name     = "terratest-rg-${var.postfix}"
  location = var.location
}