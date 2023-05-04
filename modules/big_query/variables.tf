# Déclaration des variables utilisées dans le module big_query

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

