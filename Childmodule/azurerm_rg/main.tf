resource " azurerm_resource_group" " rg1"{
    foreach = var.gresource_group
    name = each.vaue.rgname
    location = each.value.rglocation
}