provider "google" {
  project = var.project_id
  region  = var.region
}

# Include BigQuery resources
module "bigquery" {
  source = "./bigquery"
  project_id = var.project_id
  region     = var.region
}

# Include Pub/Sub resources
module "pubsub" {
  source = "./pubsub"
  project_id = var.project_id
}
