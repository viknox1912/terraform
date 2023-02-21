
terraform {
  backend "gcs" {
    bucket = "0978bcc9e87f61b8-bucket-tfstate"
    prefix = "terraform/state"
  }

}

provider "google" {
  credentials = file("data-infinity-374414-b9e67d5de35b.json")
}

resource "google_project_service" "compute_service" {

  service = "compute.googleapis.com"
  project = var.project_id
}

