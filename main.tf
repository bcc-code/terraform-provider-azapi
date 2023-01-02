terraform {
  required_providers {
    azapi = {
      version = "~> 1.0.2"
      source  = "registry.bcc.no/azure/azapi"
    }
  }
}

provider "azapi" {
  subscription_id = "20013da5-3851-4ff3-bc41-39512706ebb6"
  client_id = "56219f84-f0a9-4702-b6ab-6dd640a10ae6"
  tenant_id = "8572f54e-d0a8-4ea4-a28e-557c63698a4a"
  oidc_token_file_path = "token.txt"
  use_oidc = true
  # oidc_authority_host = 
}

resource "azapi_resource" "example102" {
  type      = "Microsoft.Resources/resourceGroups@2021-04-01"
  name      = "registry102"
  parent_id = "/subscriptions/20013da5-3851-4ff3-bc41-39512706ebb6"

  location = "West Europe"

  body = jsonencode({})
  tags = {
    "key" = "value3"
  }
}