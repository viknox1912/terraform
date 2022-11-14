terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      
    }
  }
}

provider "google" {
  credentials = file("divine-apogee-368514-9031380e973f.json")

  project = "divine-apogee-368514"
  region  = "europe-west"
  zone    = "europe-west3-c"
}

resource "google_compute_network" "vpc_network" {
  name = "terraform-network"
  
}


