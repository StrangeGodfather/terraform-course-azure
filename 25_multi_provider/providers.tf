terraform {
  required_version = ">= 1.2.8"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.26.0"
    }

  }
}

provider "azurerm" {
  alias = "subscription_hub"
  # subscription_id = "4b72ed90-7ca3-4e76-8d0f-31a2c0bee7a3"
  # tenant_id       = "72f988bf-86f1-41af-91ab-2d7cd011db47"
  features {}
}

provider "azurerm" {
  alias = "subscription_spoke"
  # subscription_id = "59d574d4-1c03-4092-ab22-312ed594eec9"
  # tenant_id       = "558506eb-9459-4ef3-b920-ad55c555e729"
  features {}
}
