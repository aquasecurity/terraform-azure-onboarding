terraform {
  required_version = ">= 1.6.4"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.95.0"
    }
    http = {
      source  = "hashicorp/http"
      version = "~>3.4.2"
    }
  }
}
