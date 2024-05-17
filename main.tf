provider "google" {
  project = "ucla_gcp_projectID"
  region  = "us-central1"
}

module "resource_naming" {
  source = "./parent"
  resource_map = {
    "my-virtual-machine" = "virtual_machine"
    "my-keyvault"        = "key_vault"
    "my-storage-account" = "storage_account"
  }
}

output "resource_names" {
  value = module.resource_naming.resource_names
}
