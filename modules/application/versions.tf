terraform {
  required_version = ">= 1.6.4"
  required_providers {
    azuread = {
      source  = "hashicorp/azuread"
      version = "~>2.47.0"
    }
  }
}
