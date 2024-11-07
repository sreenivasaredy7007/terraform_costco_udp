output "bigquery_dataset_id" {
  value = module.bigquery.dataset_id
}

output "bigquery_table_id" {
  value = module.bigquery.table_id
}

output "pubsub_topic" {
  value = module.pubsub.topic_name
}

output "pubsub_subscription" {
  value = module.pubsub.subscription_name
}
