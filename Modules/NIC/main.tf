resource "azurerm_network_interface" "testing" {
    for_each = var.nic
    name = each.value.name
    resource_group_name = each.value.resource_group_name
    location = each.value.location

    ip_configuration {
      name = "internal"
      private_ip_address_allocation = "Dynamic"
      subnet_id = data.azurerm_subnet.testing.id
      public_ip_address_id = data.azurerm_public_ip.testing.id

    }
  
}