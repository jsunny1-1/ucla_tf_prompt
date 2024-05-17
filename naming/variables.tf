variable "base_name" {
  description = "Base name for resource"
  type        = string
}

variable "resource_type" {
  description = "Type of resource"
  type        = string
  validation {
    condition     = contains(["virtual_machine", "key_vault", "storage_account"], var.resource_type)
    error_message = "resource_type must be one of 'virtual_machine', 'key_vault', or 'storage_account'."
  }
}