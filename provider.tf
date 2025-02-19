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
    azureSubscription: 'project2-connection'
    scriptType: 'bash'
    scriptLocation: 'inlineScript'
    inlineScript: |
      terraform init
      terraform apply --auto-approve