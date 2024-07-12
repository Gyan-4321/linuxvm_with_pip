module "rgcom" {
  source = "./RG"
  rg     = var.rg
}

module "vnetcom" {
  source = "./VNET"
  vnet   = var.vnet
  depends_on = [ module.rgcom ]
}

module "subnetcom" {
  source = "./subnet"
  subnet = var.subnet
  depends_on = [ module.vnetcom ]
}

module "niccom" {
  source = "./NIC"
  nic    = var.nic
  depends_on = [ module.subnetcom , module.rgcom , module.pipcom]
}

module "pipcom" {
  source = "./PIP"
  pip    = var.pip

  depends_on = [ module.rgcom ]
}

module "vmcom" {
  source = "./VM"
  vm     = var.vm
  depends_on = [ module.rgcom , module.niccom, module.pipcom ]
}
