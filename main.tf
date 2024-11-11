provider "google" {
  project = var.project_id
  region  = "us-central1"
}

# Render the topic template
data "template_file" "pubsub_topic" {
  template = file("${path.module}/templates/topic.tf.tpl")

  vars = {
    project_id = var.project_id
    topic_name = var.topic_name
  }
}

# Render the subscription template
data "template_file" "pubsub_subscription" {
  template = file("${path.module}/templates/subscription.tf.tpl")

  vars = {
    project_id        = var.project_id
    subscription_name = var.subscription_name
  }
}
