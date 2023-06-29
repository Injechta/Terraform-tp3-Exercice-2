resource "azurerm_subnet" "subnets" {
  for_each             = local.subnets
  name                 = each.key
  address_prefixes     = [each.value]
  virtual_network_name = azurerm_virtual_network.vnet.name
  resource_group_name  = local.resource_group
}
