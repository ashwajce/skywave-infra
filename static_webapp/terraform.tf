

resource "azurerm_static_site" "web" {
  name                = "skywavestaticwebapp001"
  resource_group_name = "skywave-prod"
  location            = "eastasia"
}

resource "azurerm_static_site_custom_domain" "domain" {
  static_site_id  = azurerm_static_site.web.id
  domain_name     = "skywaveconsultants.in"
  validation_type = "dns-txt-token"
}

  