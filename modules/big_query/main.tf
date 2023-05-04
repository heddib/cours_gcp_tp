# Cette ressource permet de créer un dataset Big Query
resource "google_bigquery_dataset" "dataset" {
  dataset_id      = var.big_query_dataset_id
  friendly_name   = var.big_query_friendly_name
  description     = var.big_query_friendly_name
  location        = "EU"
  default_table_expiration_ms = 3600000
}

# Cette ressource permet de créer une table Big Query
resource "google_bigquery_table" "table" {
  dataset_id = google_bigquery_dataset.dataset.dataset_id
  table_id   = var.big_query_table_id
  time_partitioning {
    type = "DAY"
  }
  schema = <<EOF
[
  {
    "name": "name",
    "type": "STRING",
    "mode": "REQUIRED"
  },
  {
    "name": "age",
    "type": "INTEGER",
    "mode": "REQUIRED"
  }
]
EOF

# Permet de supprimer lors du destroy
deletion_protection = false
}