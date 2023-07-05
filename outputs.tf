output "storage_account_name" {
  description = "The name of the storage account."
  value       = azurerm_storage_account.this.name
}

output "stroage_account_id" {
  description = "The ID of the storage account."
  value       = azurerm_storage_account.this.id
}
output "primary_access_key" {
  description = "The primary access key of the storage account."
  value       = azurerm_storage_account.this.primary_access_key
}

output "primary_blob_connection_string" {
  description = "The primary blob connection string of the storage account."
  value       = azurerm_storage_account.this.primary_blob_connection_string
}

output "primary_blob_endpoint" {
  description = "The primary blob endpoint of the storage account."
  value       = azurerm_storage_account.this.primary_blob_endpoint
}

output "primary_file_endpoint" {
  description = "The primary file endpoint of the storage account."
  value       = azurerm_storage_account.this.primary_file_endpoint
}

output "primary_queue_endpoint" {
  description = "value of the primary queue endpoint of the storage account."
  value       = azurerm_storage_account.this.primary_queue_endpoint
}

output "primary_table_endpoint" {
  description = "The primary table endpoint of the storage account."
  value       = azurerm_storage_account.this.primary_table_endpoint
}

output "secondary_access_key" {
  description = "The secondary access key of the storage account."
  value       = azurerm_storage_account.this.secondary_access_key
}

output "secondary_blob_connection_string" {
  description = "The secondary blob connection string of the storage account."
  value       = azurerm_storage_account.this.secondary_blob_connection_string
}

output "secondary_blob_endpoint" {
  description = "The secondary blob endpoint of the storage account."
  value       = azurerm_storage_account.this.secondary_blob_endpoint
}

output "secondary_file_endpoint" {
  description = "The secondary file endpoint of the storage account."
  value       = azurerm_storage_account.this.secondary_file_endpoint
}

output "secondary_queue_endpoint" {
  description = "The secondary queue endpoint of the storage account."
  value       = azurerm_storage_account.this.secondary_queue_endpoint
}

output "secondary_table_endpoint" {
  description = "The secondary table endpoint of the storage account."
  value       = azurerm_storage_account.this.secondary_table_endpoint
}