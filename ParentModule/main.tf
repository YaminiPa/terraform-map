module "rg" {
    source = "../Childmodule/azurerm_rg"
    gresource_group = var.modulerg
}

module "sg" {
    depends_on = [module.rg]
    source = "../Childmodule/azurerm_sg"
    gstorage_account = var.modulesg

}


module "cn" {
    depends_on = [module.sg]
    source = "../Childmodule/azurerm_cn"
    gcontainer = var.modulecn
}