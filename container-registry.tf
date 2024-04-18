resource "azurerm_container_registry" "container_registry"{
    name                = var.app_name
    resource_group_name = azurerm_resource_group.practicum16.name
    location            = var.location
    admin_enabled       = true
    sku                 = "Basic"
}

output "register_hostname" {
    value = azurerm_container_registry.container_registry.login_server
}

output "register_uname" {
    value = azurerm_container_registry.container_registry.admin_username
}

output "register_pwd" {
    value = azurerm_container_registry.container_registry.admin_password
    sensitive = true
}