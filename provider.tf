# Déclaration du provider Google avec les variables du fichier variables.tf
provider "google" {
  project = var.project
  region  = var.region
  zone    = var.location
}