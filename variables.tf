variable "project_id" {
  type        = string
  description = "Google Cloud project ID"
}

variable "region" {
  type        = string
  description = "Region for Google Cloud resources"
  default     = "us-central1"
}
