variable "storage_account_name" {
  type        = string
  description = "The name of the storage account."
}

variable "resource_group_name" {
  type        = string
  description = "The name of the resource group."
}

variable "location" {
  type        = string
  description = "The location of the resource group."
}

variable "account_tier" {
  type        = string
  description = "The storage account tier."
  default     = "Standard"
}

variable "account_kind" {
  type        = string
  description = "The storage account kind."
  default     = "StorageV2"
}

variable "account_replication_type" {
  type        = string
  description = "The storage account replication type."
  default     = "LRS"
}

variable "cross_tenant_replication_enabled" {
  type        = bool
  description = "Whether cross-tenant replication is enabled."
  default     = false
}

variable "access_tier" {
  type        = string
  description = "The storage account access tier."
  default     = "Hot"
}

variable "enable_https_traffic_only" {
  type        = bool
  description = "Whether HTTPS traffic only is enabled."
  default     = true
}

variable "min_tls_version" {
  type        = string
  description = "The minimum TLS version."
  default     = "TLS1_2"
}

variable "shared_access_key_enabled" {
  type        = bool
  description = "Whether shared access key is enabled."
  default     = true
}

variable "public_network_access_enabled" {
  type        = bool
  description = "Whether public network access is enabled."
  default     = true
}

variable "is_hns_enabled" {
  type        = bool
  description = "Whether Hierarchical Namespace is enabled."
  default     = false
}

variable "infrastructure_encryption_enabled" {
  type        = bool
  description = "Whether infrastructure encryption is enabled."
  default     = false
}

variable "allowed_copy_scope" {
  type        = string
  description = "The allowed copy scope."
  default     = "PrivateLink"
}

variable "allow_nested_items_to_be_public" {
  type        = bool
  description = "Whether nested items can be public."
  default     = false  
}

variable "network_rules" {
  type = list(object({
    default_action             = string
    bypass                     = list(string)
    ip_rules                   = list(string)
    virtual_network_subnet_ids = list(string)
  }))
  description = "The network rules."
  default = [{
    default_action             = "Allow"
    bypass                     = ["AzureServices"]
    ip_rules                   = []
    virtual_network_subnet_ids = []
  }]
}


variable "tags" {
  type        = map(string)
  description = "The tags to apply to the storage account."
  default     = {}
}