output "resource_names" {
  value = { for k, v in var.resource_map : k => module.naming[k].resource_name }
}