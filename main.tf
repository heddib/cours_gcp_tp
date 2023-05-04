# Déclaration du module storage pour la création des buckets
module "storage" {
  source = "./modules/storage"
  region              = var.region
  environment         = var.environment
  bucket_backend_name = var.bucket_backend_name
  bucket_cloud_name   = var.bucket_cloud_name
}

# Déclaration du module cloud_function pour la création de la cloud function
module "cloud_function" {
  source = "./modules/cloud_function"
  depends_on          = [ module.storage ]
  region              = var.region
  environment         = var.environment
  bucket_cloud_name   = module.storage.bucket_cloud_name
  bucket_object_name  = module.storage.bucket_object_name
}

# Déclaration du module big_query pour la création du dataset et de la table
module "big_query" {
  source = "./modules/big_query"
  depends_on              = [ module.cloud_function ]
  big_query_dataset_id    = var.big_query_dataset_id
  big_query_friendly_name = var.big_query_friendly_name
  big_query_table_id      = var.big_query_table_id
}

# Déclaration du module stack_driver pour la création des métriques
module "stack_driver" {
  source = "./modules/stack_driver"
  depends_on  = [ module.big_query ]
}