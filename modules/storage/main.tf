# Cette ressource permet de générer un id aléatoire de 8 caractères
resource "random_id" "prefix" {
  byte_length = 8
}

# Cette ressource permet de créer un bucket GCS pour le backend
resource "google_storage_bucket" "backend" {
  name          = "bucket-${var.bucket_backend_name}-${var.environment}-${var.region}-${random_id.prefix.hex}"
  location      = "${var.region}"
}

# Cette ressource permet de créer un bucket GCS pour la cloud function
resource "google_storage_bucket" "cloud" {
  name          = "bucket-${var.bucket_cloud_name}-${var.environment}-${var.region}-${random_id.prefix.hex}"
  location      = "${var.region}"
}

# Cette ressource permet de créer un objet dans le bucket GCS de la cloud function
resource "google_storage_bucket_object" "object" {
  name   = "function-source.zip"
  bucket = google_storage_bucket.cloud.name
  source = "function-source.zip"
}