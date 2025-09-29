resource "azurerm_storage_conatiner" "cn" {
    depends_on = [azurerm_storage_account.sg]
    foreach = var.gcontainer
    name = each.value.cnname
    stoarge_account_id = azurerm_storage_account_sg.id 
    container_access_type = "private"

}