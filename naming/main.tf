locals {
  // Truncate if >15 characters
  truncated_base_name = substr(var.base_name, 0, 15)
}

locals {
  // Base name on resource type
  resource_name = {
    virtual_machine  = length("${var.base_name}vm-00") > 15 ? "vm-${local.truncated_base_name}-00" : "vm-${var.base_name}-00"
    key_vault        = lower("kv-${var.base_name}")
    storage_account  = lower(replace("sa${var.base_name}", "-", ""))
  }
}