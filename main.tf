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

resource "google_compute_instance" "some_try_instance" {
  name = "first_cluster"
  project = "divine-apogee-368514"
  region  = "europe-west"
  zone    = "europe-west3-c"
  machine_type = "e2-standard-2"
  boot_disk {
    initialize_params{
      image = "centos-cloud/centos-7"
    }
  }
  network_interface {
    network = google_compute_network.vpc_network
    
  }

  # Allow http
resource "google_compute_firewall" "allow-http" {
  name    = "test-fw-allow-http"
  network = google_compute_network.vpc.name
  allow {
    protocol = "tcp"
    ports    = ["80"]
  }
  
  source_ranges = ["0.0.0.0/0"]
  target_tags = ["http"] 
}# allow ssh
resource "google_compute_firewall" "allow-ssh" {
  name    = "test-fw-allow-ssh"
  network = google_compute_network.vpc.name
  allow {
    protocol = "tcp"
    ports    = ["22"]
  }  
  source_ranges = ["0.0.0.0/0"]
  target_tags = ["http"]
}
  
}
