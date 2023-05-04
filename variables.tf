# Ce fichier contient les variables utilisées dans le projet.

variable "project" {
  description = "The project in which resources will be created."
  type        = string
  default     = "chrome_insight_328216" # Modifier "chrome-insight-328216" par le nom de votre projet.
}

variable "region" {
  description = "The region in which resources will be created."
  type        = string
  default     = "europe-west1"
}

variable "location" {
  description = "The location in which resources will be created."
  type        = string
  default     = "europe-west1-d"
}

variable "environment" {
  description = "The environment in which resources will be created."
  type        = string
  default     = "dev"
}

variable "bucket_backend_name" {
  description = "The name of the backend bucket."
  type        = string
  default     = "backend"
}

variable "bucket_cloud_name" {
  description = "The name of the cloud bucket."
  type        = string
  default     = "cloud"
}

variable "big_query_dataset_id" {
  description = "The name of the dataset."
  type        = string
}

variable "big_query_friendly_name" {
  description = "The friendly name of the dataset."
  type        = string
}

variable "big_query_table_id" {
  description = "The name of the table."
  type        = string
}

