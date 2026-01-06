variable "credentials" {
  description = "My Credentials"
  default     = "./keys/my-creds.json"

}

variable "project" {
  description = "Project-Name"
  default     = "bigquery-sandbox-483016"
}
variable "region" {
  description = "Region Name"
  default     = "europe-west2"
}


variable "location" {

  description = "Project Location"
  default     = "europe-west2"
}

variable "bq_dataset_name" {

  description = "My BigQuery Dataset Name"
  default     = "zoomcamp"
}

variable "gcs_bucket_name" {

  description = "My Storage Bucket Name"
  default     = "gaurav-kestra-zoomcamp-bucket"
}
variable "gcs_storage_class" {
  description = "Bucket Storage Class"
  default     = "STANDARD"
}