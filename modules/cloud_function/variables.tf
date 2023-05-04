# Déclaration des variables utilisées dans le module cloud_function

variable "region" {
  description = "The region in which resources will be created."
  type        = string
}

variable "environment" {
  description = "The environment in which resources will be created."
  type        = string
}

variable "bucket_cloud_name" {
  description = "The name of the cloud bucket."
  type        = string
}

variable "bucket_object_name" {
  description = "The name of the object."
  type        = string
}