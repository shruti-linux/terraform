provider "azurerm" {
  features {
  }
  subscription_id = "79c65e59-aadb-45ab-9a43-3e10d9e5225e"
}

resource "azurerm_resource_group" "example" {
  name     = "rg-newly"
  location = "westus"
}
- task: AzureCLI@2
  inputs:
    azureSubscription: 'Pay-As-You-Go(79c65e59-aadb-45ab-9a43-3e10d9e5225e)'
    scriptType: 'ps'
    scriptLocation: 'inlineScript'
    inlineScript: |
      terraform init
      terraform apply --auto=approve
