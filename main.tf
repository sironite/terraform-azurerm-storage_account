# Define an Azure Storage Account resource
resource "azurerm_storage_account" "this" {
  # Set the name of the storage account
  name                = var.storage_account_name
  # Set the name of the resource group that the storage account belongs to
  resource_group_name = var.resource_group_name
  # Set the location of the storage account
  location            = var.location

  # Set the storage account tier (Standard or Premium)
  account_tier                      = var.account_tier
  # Set the storage account kind (Storage, BlobStorage, or StorageV2)
  account_kind                      = var.account_kind
  # Set the storage account replication type (LRS, GRS, RAGRS, or ZRS)
  account_replication_type          = var.account_replication_type
  # Set whether cross-tenant replication is enabled
  cross_tenant_replication_enabled  = var.cross_tenant_replication_enabled
  # Set the access tier of the storage account (Hot or Cool)
  access_tier                       = var.access_tier
  # Set whether HTTPS traffic is the only allowed traffic
  enable_https_traffic_only         = var.enable_https_traffic_only
  # Set the minimum TLS version required for the storage account
  min_tls_version                   = var.min_tls_version
  # Set whether shared access keys are enabled for the storage account
  shared_access_key_enabled         = var.shared_access_key_enabled
  # Set whether public network access is enabled for the storage account
  public_network_access_enabled     = var.public_network_access_enabled
  # Set whether Hierarchical Namespace (HNS) is enabled for the storage account
  is_hns_enabled                    = var.is_hns_enabled
  # Set whether infrastructure encryption is enabled for the storage account
  infrastructure_encryption_enabled = var.infrastructure_encryption_enabled
  # Set the allowed copy scope for the storage account
  allowed_copy_scope                = var.allowed_copy_scope
  # Set whether blob public access is enabled for the storage account
  allow_nested_items_to_be_public = var.allow_nested_items_to_be_public

  # Define dynamic block for network rules
  dynamic "network_rules" {
    # If network_rules is not empty, loop through each rule
    for_each = var.network_rules != [] ? var.network_rules : []
    content {
      # Set the default action for the network rule
      default_action             = network_rules.value.default_action
      # Set the bypass value for the network rule
      bypass                     = network_rules.value.bypass
      # Set the IP rules for the network rule
      ip_rules                   = network_rules.value.ip_rules
      # Set the virtual network subnet IDs for the network rule
      virtual_network_subnet_ids = network_rules.value.virtual_network_subnet_ids
    }
  }

  # Set the tags for the storage account
  tags = var.tags
}
