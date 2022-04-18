resource "azurerm_resource_group" "first_resource_group" {
  name     = "rg-first_storage_account_udemy"
  location = var.location
  tags     = local.common_tags

}

resource "azurerm_storage_account" "fist_storage_account" {
  name                     = "nelsonnetoterraform"
  resource_group_name      = azurerm_resource_group.first_resource_group.name
  location                 = var.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
  allow_nested_items_to_be_public = false

  tags = local.common_tags
}

resource "azurerm_storage_container" "first_container" {
  name                 = "imagens"
  storage_account_name = azurerm_storage_account.fist_storage_account.name
}