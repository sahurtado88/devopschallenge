output "storage_account_name" {
    description = "storage account name"
    value = azurerm_storage_account.storage_account.name 
}
output "primary_endpoint" {
    description = "primary endpoint"
    value = azurerm_storage_account.storage_account.primary_blob_endpoint
  
}