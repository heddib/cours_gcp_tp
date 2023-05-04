# Déclaration des outputs pour récupérer les valeurs des ressources créées
# et les utiliser dans le module cloud_function

output "bucket_cloud_name" {
  value = google_storage_bucket.cloud.name
}

output "bucket_object_name" {
  value = google_storage_bucket_object.object.name
}