resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_template_deployment" "arm" {
  name                = "arm-deploy"
  resource_group_name = azurerm_resource_group.rg.name
  deployment_mode     = "Complete" # "Incremental"
  template_body       = file("arm_template.json")

  parameters = {
    storageAccountName = var.storage_account_name
    storageAccountType = "Standard_LRS"
  }
}
