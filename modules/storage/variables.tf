# Déclaration des variables utilisées dans le module storage

variable "region" {
  description = "The region in which resources will be created."
  type        = string
}

variable "environment" {
  description = "The environment in which resources will be created."
  type        = string
}

variable "bucket_backend_name" {
  description = "The name of the backend bucket."
  type        = string
}

variable "bucket_cloud_name" {
  description = "The name of the cloud bucket."
  type        = string
}