# Déclaration des outputs pour récupérer les valeurs des ressources créées
# La valeur sera affichée dans la console

output "function_url" {
  value = google_cloudfunctions_function.function.https_trigger_url
}