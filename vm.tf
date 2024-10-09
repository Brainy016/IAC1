resource "azurerm_virtual_machine" "main" {
    count= var.vm_count
   name                  = "vmachine"
   location              = azurerm_resource_group.example.location
   resource_group_name   = azurerm_resource_group.example.name
   network_interface_ids = [azurerm_network_interface.nic[count.index].id]
   vm_size               = "Standard_DS1_v2"

    storage_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }
  storage_os_disk {
    name              = "myosdisk"
    caching           = "ReadWrite"
    create_option     = "Attach"
    managed_disk_type = data.azurerm_managed_disk.myosdisk.id

  }
  os_profile {
    computer_name  = var.computer_name
    admin_username = var.admin_username
    admin_password = var.admin_password
  }
  os_profile_linux_config {
    disable_password_authentication = false
  }
  tags = {
    environment = "staging"
  }
}