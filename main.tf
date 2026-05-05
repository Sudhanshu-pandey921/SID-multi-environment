module "rg" {
  source   = "./modules/rg"
  rg_name =      var.rg_name
  location = var.location
}

module "vnet" {
  source        = "./modules/vnet"
  vnet_name     = var.vnet_name
  address_space = var.address_space
  location      = var.location
  rg_name     = var.rg_name
}

module "subnet" {
  source           = "./modules/subnet"
  subnet_name      = var.subnet_name
  address_prefixes = var.subnet_prefix
  rg_name          = var.rg_name
  vnet_name        = var.vnet_name
}