# Resource Group for Storage Account 
resource "azurerm_resource_group" "resource_group" {
  name                = var.storage_account_resource_group_name
  location            = var.storage_account_resource_group_location
  tags                = var.storage_account_resource_group_tags
}



# Storage Account
resource "azurerm_storage_account" "storage" {
  depends_on               = [azurerm_resource_group.resource_group]
  name                     = var.storage_account_name
  resource_group_name      = var.storage_account_resource_group_name
  location                 = var.storage_account_resource_group_location
  account_tier             = var.storage_account_tier
  account_replication_type = var.storage_account_tier_replication_type
  access_tier              = var.storage_account_access_tier
  min_tls_version          = var.storage_account_min_tls_version
  tags                     = var.storage_account_resource_group_tags
}




# Resource Management Lock  
resource "azurerm_management_lock" "management_lock" {
  depends_on     = [azurerm_storage_account.storage]
  name           = var.storage_account_lock_name
  scope          = azurerm_storage_account.storage.id
  lock_level     = var.storage_account_lock_level
  notes          = var.storage_account_lock_notes
}






resource "azurerm_storage_container" "container" {
  depends_on            = [azurerm_storage_account.storage ]
  name                  = var.storage_account_container_name
  storage_account_name  = var.storage_account_name
  container_access_type = var.storage_account_container_access_type

}




resource "azurerm_storage_encryption_scope" "storage_encryption" {
  depends_on        = [azurerm_storage_account.storage ]
  name               = var.storage_account_encryption_scope_name
  storage_account_id = azurerm_storage_account.storage.id
  source             = "Microsoft.Storage"

  
}

