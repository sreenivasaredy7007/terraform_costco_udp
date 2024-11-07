resource "google_pubsub_topic" "sample_topic" {
  name    = "sample-topic"
  project = var.project_id
}

output "topic_name" {
  value = google_pubsub_topic.sample_topic.name
}
