resource "azurerm_resource_group" "testing" {
    for_each = var.rg
    name= "test-RG"
    location = "centralindia"
  
}