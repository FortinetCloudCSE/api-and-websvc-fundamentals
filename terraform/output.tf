output "kali_linux_PublicIP" {
  value       = azurerm_public_ip.kalipip.ip_address
}

output "kalivm_username" {
  value       = azurerm_linux_virtual_machine.kalivm.admin_username 
}

output "kalivm_password" {
  value       = azurerm_linux_virtual_machine.kalivm.admin_password
  sensitive = true
}