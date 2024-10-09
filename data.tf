data "azurerm_managed_disk" "myosdisk" {
  name                = "myosdisk"
  resource_group_name = "sapphire"
}
