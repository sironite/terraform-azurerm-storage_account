module "storage_account" {
  source  = "sironite/storage_account/azurerm"
  version = "X.Y.Z"

  name                = "storageaccount"
  resource_group_name = "resourcegroup"
  location            = "westus2"

  network_rules = [{
    default_action             = "Allow"
    bypass                     = "AzureServices"
    ip_rules                   = []
    virtual_network_subnet_ids = []
  }]
}

