<!-- BEGIN_TF_DOCS -->
 # Azure Storage Account
[![Changelog](https://img.shields.io/badge/changelog-release-green.svg)](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_account) [![Notice](https://img.shields.io/badge/notice-copyright-yellow.svg)](NOTICE) [![Apache V2 License](https://img.shields.io/badge/license-Apache%20V2-orange.svg)](LICENSE) [![TF Registry](https://img.shields.io/badge/terraform-registry-blue.svg)](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_account)

# Usage - Module

## Azure Storage Account

```hcl
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

```

## Providers

| Name | Version |
|------|---------|
| azurerm | >=2.0.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_storage_account.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_account) | resource |

## Inputs

| Name | Description | Type | Required |
|------|-------------|------|:--------:|
| location | The location of the resource group. | `string` | yes |
| resource\_group\_name | The name of the resource group. | `string` | yes |
| storage\_account\_name | The name of the storage account. | `string` | yes |
| access\_tier | The storage account access tier. | `string` | no |
| account\_kind | The storage account kind. | `string` | no |
| account\_replication\_type | The storage account replication type. | `string` | no |
| account\_tier | The storage account tier. | `string` | no |
| allowed\_copy\_scope | The allowed copy scope. | `string` | no |
| cross\_tenant\_replication\_enabled | Whether cross-tenant replication is enabled. | `bool` | no |
| enable\_https\_traffic\_only | Whether HTTPS traffic only is enabled. | `bool` | no |
| infrastructure\_encryption\_enabled | Whether infrastructure encryption is enabled. | `bool` | no |
| is\_hns\_enabled | Whether Hierarchical Namespace is enabled. | `bool` | no |
| minimum\_tls\_version | The minimum TLS version. | `string` | no |
| network\_rules | The network rules. | <pre>list(object({<br>    default_action             = string<br>    bypass                     = string<br>    ip_rules                   = list(string)<br>    virtual_network_subnet_ids = list(string)<br>  }))</pre> | no |
| public\_network\_access\_enabled | Whether public network access is enabled. | `bool` | no |
| shared\_access\_key\_enabled | Whether shared access key is enabled. | `bool` | no |
| tags | The tags to apply to the storage account. | `map(string)` | no |

## Outputs

| Name | Description |
|------|-------------|
| primary\_access\_key | The primary access key of the storage account. |
| primary\_blob\_connection\_string | The primary blob connection string of the storage account. |
| primary\_blob\_endpoint | The primary blob endpoint of the storage account. |
| primary\_file\_endpoint | The primary file endpoint of the storage account. |
| primary\_queue\_endpoint | value of the primary queue endpoint of the storage account. |
| primary\_table\_endpoint | The primary table endpoint of the storage account. |
| secondary\_access\_key | The secondary access key of the storage account. |
| secondary\_blob\_connection\_string | The secondary blob connection string of the storage account. |
| secondary\_blob\_endpoint | The secondary blob endpoint of the storage account. |
| secondary\_file\_endpoint | The secondary file endpoint of the storage account. |
| secondary\_queue\_endpoint | The secondary queue endpoint of the storage account. |
| secondary\_table\_endpoint | The secondary table endpoint of the storage account. |
| storage\_account\_name | The name of the storage account. |
| stroage\_account\_id | The ID of the storage account. |

## Related documentation
<!-- END_TF_DOCS -->