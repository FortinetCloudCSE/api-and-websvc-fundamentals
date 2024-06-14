output "kali_linux_PublicIP" {
  value       = azurerm_public_ip.kalipip.ip_address
}

output "username" {
  value       = azurerm_linux_virtual_machine.kalivm.admin_username 
}

output "password" {
  value       = azurerm_linux_virtual_machine.kalivm.admin_password
  sensitive = true
}