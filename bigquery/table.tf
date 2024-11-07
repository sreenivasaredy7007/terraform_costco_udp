resource "google_bigquery_table" "sample_table" {
  dataset_id = google_bigquery_dataset.sample_dataset.dataset_id
  table_id   = "sample_table"
  project    = var.project_id

  schema = jsonencode([
    {
      name = "id"
      type = "STRING"
      mode = "REQUIRED"
    },
    {
      name = "name"
      type = "STRING"
      mode = "NULLABLE"
    },
    {
      name = "age"
      type = "INTEGER"
      mode = "NULLABLE"
    }
  ])
}

output "table_id" {
  value = google_bigquery_table.sample_table.table_id
}
