variable "subscription_id" {}

variable "client_id" {}

variable "client_secret" {}

variable "tenant_id" {}

variable "resource_group" {
    description = "Logical containers for a collection of resources that can be treated as one logical instance"
}

variable "location" {
    description = "The region where to deploy the resource/infrastructure (e.g. East US)."  
    default = "West Europe"
}

variable "azurerm_application_insights_name" {
	description = "name of the application insight"
}

variable "application_type" {
	description = "Application insight type"
}

variable "environment"{
    default = "dev"
}

