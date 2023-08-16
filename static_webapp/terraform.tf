

resource "azurerm_static_site" "web" {
  name                = "skywavestaticwebapp001"
  resource_group_name = "skywave-prod"
  location            = "south india"
}


  