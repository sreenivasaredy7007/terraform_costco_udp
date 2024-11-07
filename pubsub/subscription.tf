resource "google_pubsub_subscription" "sample_subscription" {
  name                 = "sample-subscription"
  topic                = google_pubsub_topic.sample_topic.id
  ack_deadline_seconds = 20
}

output "subscription_name" {
  value = google_pubsub_subscription.sample_subscription.name
}
