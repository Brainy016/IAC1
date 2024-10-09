variable "rg_name" {
  default = "sapphire"
}
variable "rg_location" {
  default = "West Europe"
}
variable "vnet_name" {
  default = "vnetwork"
}
variable "prefix" {
  default = "sapph"
}
variable "vm_count"{
    default=2
}
variable "admin_username" {
  description = "The admin username for the virtual machine"
  type        = string
}

variable "admin_password" {
  description = "The admin password for the virtual machine"
  type        = string
  sensitive   = true
}

variable "computer_name" {
  description = "The hostname of the virtual machine"
  type        = string
}