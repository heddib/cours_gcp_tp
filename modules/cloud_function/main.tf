# Cette ressource permet de générer un id aléatoire de 8 caractères
resource "random_id" "prefix" {
  byte_length = 8
}

# Cette ressource permet de créer une cloud function
resource "google_cloudfunctions_function" "function" {
  name        = "nodejs-hello-world-${var.region}-${random_id.prefix.hex}"
  description = "hello world function"

  available_memory_mb          = 128
  source_archive_bucket        = var.bucket_cloud_name
  source_archive_object        = var.bucket_object_name
  https_trigger_security_level = "SECURE_ALWAYS"
  timeout                      = 60
  runtime                      = "nodejs18"
  entry_point                  = "helloHttp"
  trigger_http                 = true
}

# Cette ressource permet de donner les droits d'invocation de la cloud function à tout le monde
# Cela évite d'avoir l'erreur suivante lors de l'appel de la cloud function:
# Erreur : 403 Forbidden
resource "google_cloudfunctions_function_iam_member" "invoker" {
  project        = google_cloudfunctions_function.function.project
  region         = google_cloudfunctions_function.function.region
  cloud_function = google_cloudfunctions_function.function.name

  role   = "roles/cloudfunctions.invoker"
  member = "allUsers"
}
