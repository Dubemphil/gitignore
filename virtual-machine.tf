resource "azurerm_network_interface" "terraform" {
  name                = "terraform-nic"
  location            = azurerm_resource_group.terraform.location
  resource_group_name = azurerm_resource_group.terraform.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.terraform.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_linux_virtual_machine" "terraform" {
  name                = "terraform-machine"
  resource_group_name = azurerm_resource_group.terraform.name
  location            = azurerm_resource_group.terraform.location
  size                = "Standard_F2"
  admin_username      = "adminuser"
  admin_password      = "Terraform@123"
  network_interface_ids = [
    azurerm_network_interface.terraform.id,
  ]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }
}