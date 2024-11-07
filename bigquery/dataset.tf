resource "google_bigquery_dataset" "sample_dataset" {
  dataset_id  = "sample_dataset"
  project     = var.project_id
  location    = var.region
  description = "Sample BigQuery dataset"
}

output "dataset_id" {
  value = google_bigquery_dataset.sample_dataset.dataset_id
}
