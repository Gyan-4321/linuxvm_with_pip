data "azurerm_subnet" "testing" {
    name = "test-subnet"
    resource_group_name = "test-rg"
    virtual_network_name = "test-vnet"
  
}

data "azurerm_public_ip" "testing" {
  name                = "test-pip"
  resource_group_name = "test-rg"
  # Additional criteria if needed
}
