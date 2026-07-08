terraform {
  cloud {
    organization = "mengdanzhao-org"
    hostname     = "app.terraform.io"
    workspaces {
      name = "learn-terraform-azurerm-import"
    }
  }
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=4.1.0"
    }
  }
}

provider "azurerm" {
  features {}
}

import {
  to = azurerm_storage_container.imported
  id = "https://sthandsondemo6tg0yx.blob.core.windows.net/demo-import-container"
}