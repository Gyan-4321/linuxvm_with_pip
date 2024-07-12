rg = {
  rg1 = {
    name     = "test-rg"
    location = "westeurope"
  }
}


vnet = {
  vnet1 = {
    name                = "test-vnet"
    location            = "westeurope"
    resource_group_name = "test-rg"
    address_space       = ["10.0.0.0/16"]
  }
}

subnet = {
  subnet1 = {
    name                 = "test-subnet"
    location             = "westeurope"
    resource_group_name  = "test-rg"
    address_prefixes     = ["10.0.0.0/24"]
    virtual_network_name = "test-vnet"
  }
}

nic = {
  nic1 = {
    name                = "test-nic"
    location            = "westeurope"
    resource_group_name = "test-rg"

  }
}

pip = {
  pip1 = {
    name                = "test-pip"
    location            = "westeurope"
    resource_group_name = "test-rg"
    allocation_method   = "Static"
  }
}

vm = {
  vim1 = {
    name                = "test-vm"
    location            = "westeurope"
    resource_group_name = "test-rg"
    size                = "Standard_F2"
    admin_password      = "Radhey@654321"
    admin_username      = "Kabutar654321"

  }
}