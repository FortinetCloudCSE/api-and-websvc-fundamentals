variable "username" {
  type        = string
}

variable "admin_username"{
    type    = string
    default = "labuser"
}

variable "admin_password"{
    type    = string
    default = "S3cur3P4ssw0rd123!"
}

# VM Image details
variable "publisher" {
  type    = string
  default = "kali-linux"
}

variable "offer" {
  type    = string
  default = "kali"
}

variable "sku" {
  type    = string
  default = "kali-2023-4"
}

variable "vmversion" {
  type    = string
  default = "2023.4.0"
}

variable "vm_size" {
  type    = string
  default = "Standard_B2s"
}