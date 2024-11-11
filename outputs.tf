# Output the rendered templates for verification (optional)
output "rendered_topic" {
  value = data.template_file.pubsub_topic.rendered
}

output "rendered_subscription" {
  value = data.template_file.pubsub_subscription.rendered
}

# Include resources using Terraform's `resource` blocks for actual deployment
resource "google_pubsub_topic" "topic" {
  name    = var.topic_name
  project = var.project_id
}

resource "google_pubsub_subscription" "subscription" {
  name                 = var.subscription_name
  topic                = google_pubsub_topic.topic.id
  project              = var.project_id
  ack_deadline_seconds = 10
}
