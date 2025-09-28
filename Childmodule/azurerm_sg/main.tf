resource "azurerm_storage _account" "sg"{
    foreach = var.gstorage_account
    name = each.value.sgname
    resource_group_name = azurerm_resource_group_.rg1.name
    location = each.value.sglocation
    account_tier = "standard"
    account_replication_type = "LRS"
}