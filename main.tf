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
  auto_create_subnetworks = "false"
  delete_default_routes_on_create = true
}
resource "google_compute_subnetwork" "some_sub" {
  name = "some-sub"
  ip_cidr_range = "10.2.0.0/16"
  network = google_compute_network.vpc_network.self_link
  
}
resource "google_compute_route" "some_route" {
  name = "some-route"
  dest_range = "0.0.0.0/0"
  network = google_compute_network.vpc_network.self_link
  next_hop_gateway = "default-internet-gateway"
  priority = 100  
}
resource "google_compute_router" "some_router" {
  name = "some-router"
  network = google_compute_network.vpc_network.self_link
  
}
resource "google_compute_router_nat" "some-nat" {
  name = "some-router-nat"
  router = google_compute_router.some_router.name
  region = google_compute_router.some_router.region
  nat_ip_allocate_option = "AUTO_ONLY"
  source_subnetwork_ip_ranges_to_nat = "ALL_SUBNETWORKS_ALL_IP_RANGES"  
}

resource "google_compute_instance" "some_try_instance" {
  name = "first_cluster"
  project = "divine-apogee-368514"
  machine_type = "e2-standard-2"
  boot_disk {
    initialize_params{
      image = "centos-cloud/centos-7"
    }
  }
  network_interface {
    network = google_compute_network.vpc_network
  }


  
  
}
