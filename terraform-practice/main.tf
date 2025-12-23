terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "7.14.1"
    }
  }
}

provider "google" {
  project     = "eighth-server-482112-j4"
  region      = "us-central1"
}


resource "google_storage_bucket" "demo-expire" {
  name          = "eighth-server-482112-j4-terra-bucket"
  location      = "US"
  force_destroy = true

  lifecycle_rule {
    condition {
      age = 1
    }
    action {
      type = "AbortIncompleteMultipartUpload"
    }
  }
}