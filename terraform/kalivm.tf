data "azurerm_resource_group" "resourcegroup" {
  name     = "${var.username}-http101-workshop"
}

resource "azurerm_virtual_network" "linuxvmnetwork" {
  name                = "${var.username}-http101_network"
  address_space       = ["10.0.0.0/24"]
  location            = data.azurerm_resource_group.resourcegroup.location
  resource_group_name = data.azurerm_resource_group.resourcegroup.name
}

resource "azurerm_subnet" "protectedsubnet" {
  name                 = "protected_subnet"
  resource_group_name  = data.azurerm_resource_group.resourcegroup.name
  virtual_network_name = azurerm_virtual_network.linuxvmnetwork.name
  address_prefixes     = ["10.0.0.0/26"]
}

resource "azurerm_public_ip" "kalipip" {
  name                = "${var.username}_kalipip"
  location            = data.azurerm_resource_group.resourcegroup.location
  resource_group_name = data.azurerm_resource_group.resourcegroup.name
  allocation_method   = "Static"
}

resource "azurerm_network_interface" "nic" {
  name                = "${var.username}-node_nic"
  location            = data.azurerm_resource_group.resourcegroup.location
  resource_group_name = data.azurerm_resource_group.resourcegroup.name

  ip_configuration {
    name                          = "${var.username}_ipconfig"
    subnet_id                     = azurerm_subnet.protectedsubnet.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.kalipip.id
  }
}

resource "azurerm_network_security_group" "kali-nsg" {
  name                = "${var.username}-kali_nsg"
  location            = data.azurerm_resource_group.resourcegroup.location
  resource_group_name = data.azurerm_resource_group.resourcegroup.name

  security_rule {
    name                       = "allowsshinbound"
    priority                   = 101
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "*"
    source_port_range          = "*"
    destination_port_range     = "22"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  } 
  security_rule {
    name                       = "allowhttpsinbound"
    priority                   = 101
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "*"
    source_port_range          = "*"
    destination_port_range     = "443"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  } 
}

resource "azurerm_network_interface_security_group_association" "nsg-association" {
  network_interface_id      = azurerm_network_interface.nic.id
  network_security_group_id = azurerm_network_security_group.kali-nsg.id
}


resource "azurerm_linux_virtual_machine" "kalivm" {
  name                  = "kali-${var.username}"
  resource_group_name   = data.azurerm_resource_group.resourcegroup.name
  location              = data.azurerm_resource_group.resourcegroup.location
  size                  = "Standard_B2s"
  admin_username        = var.admin_username
  admin_password        = var.admin_password
  disable_password_authentication = false

  network_interface_ids = [azurerm_network_interface.nic.id]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }


  plan {
    publisher = "kali-linux"
    name      = "kali-2023-3"
    product   = "kali"
  }

  source_image_reference {
    publisher = "kali-linux"
    offer     = "kali"
    sku       = "kali-2023-3"
    version   = "latest"
  }

}

resource "null_resource" "kali" {
  connection {
    type     = "ssh"
    user     = var.admin_username
    password = var.admin_password
    host     = resource.azurerm_public_ip.kalipip.ip_address
  }

  provisioner "remote-exec" {
    inline = [
  "sudo apt-get update",
  "sudo DEBIAN_FRONTEND=noninteractive apt-get -yq install kali-desktop-gnome",
  "sudo apt-get install xrdp -qy",
  "sudo systemctl start xrdp",
  "sudo systemctl start xrdp-sesman",
  "sudo systemctl start xrdp",
  "sudo systemctl start xrdp-sesman",
  "sudo systemctl enable xrdp",
  "sudo systemctl enable xrdp-sesman",
  "sudo systemctl reboot",
]
  }
  depends_on = [
    azurerm_linux_virtual_machine.kalivm
  ]
}