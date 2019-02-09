# configure the Microsoft Azure Provider
provider "azurerm" {
  subscription_id = "${var.subscription_id}"
  client_id       = "${var.client_id}"
  client_secret   = "${var.client_secret}"
  tenant_id       = "${var.tenant_id}"
}

#Create Resource group
resource "azurerm_resource_group" "globalappinsightrg" {
  name     = "${var.resource_group}"
  location = "${var.location}"
}

# create a application insights
resource "azurerm_application_insights" "globalappinsight" {
  name                = "${var.azurerm_application_insights_name}-${var.environment}"
  location            = "${var.location}"
  resource_group_name = "${azurerm_resource_group.globalappinsightrg.name}"
  application_type    = "${var.application_type}"
}
