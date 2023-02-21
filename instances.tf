resource "google_compute_instance" "tfer--app-1" {
  boot_disk {
    auto_delete = "true"
    device_name = "app-1"
    mode        = "READ_WRITE"
    source      = "https://www.googleapis.com/compute/v1/projects/data-infinity-374414/zones/europe-west6-a/disks/app-1"
  }

  can_ip_forward = "false"

  confidential_instance_config {
    enable_confidential_compute = "false"
  }

  deletion_protection = "false"
  enable_display      = "false"

  labels = {
    app = ""
  }

  machine_type = "e2-micro"

  metadata = {
    ssh-keys = var.ssh-key
  }

  name = "app-1"

  network_interface {
    access_config {

      network_tier = "PREMIUM"
    }

    network            = "https://www.googleapis.com/compute/v1/projects/data-infinity-374414/global/networks/default"
    network_ip         = "10.172.0.3"
    queue_count        = "0"
    stack_type         = "IPV4_ONLY"
    subnetwork         = "https://www.googleapis.com/compute/v1/projects/data-infinity-374414/regions/europe-west6/subnetworks/default"
    subnetwork_project = var.project_id
  }

  project = var.project_id

  reservation_affinity {
    type = "ANY_RESERVATION"
  }

  scheduling {
    automatic_restart   = "true"
    min_node_cpus       = "0"
    on_host_maintenance = "MIGRATE"
    preemptible         = "false"
    provisioning_model  = "STANDARD"
  }

  service_account {
    email  = "142008943512-compute@developer.gserviceaccount.com"
    scopes = ["https://www.googleapis.com/auth/devstorage.read_only", "https://www.googleapis.com/auth/logging.write", "https://www.googleapis.com/auth/monitoring.write", "https://www.googleapis.com/auth/service.management.readonly", "https://www.googleapis.com/auth/servicecontrol", "https://www.googleapis.com/auth/trace.append"]
  }

  shielded_instance_config {
    enable_integrity_monitoring = "true"
    enable_secure_boot          = "false"
    enable_vtpm                 = "true"
  }

  tags = ["app", "http-server", "https-server"]
  zone = var.zone_pj
}

resource "google_compute_instance" "tfer--app-2" {
  boot_disk {
    auto_delete = "true"
    device_name = "app-2"
    mode        = "READ_WRITE"
    source      = "https://www.googleapis.com/compute/v1/projects/data-infinity-374414/zones/europe-west6-a/disks/app-2"
  }

  can_ip_forward = "false"

  confidential_instance_config {
    enable_confidential_compute = "false"
  }

  deletion_protection = "false"
  enable_display      = "false"

  labels = {
    app = ""
  }

  machine_type = "e2-micro"

  metadata = {
    ssh-keys = var.ssh-key
  }

  name = "app-2"

  network_interface {
    access_config {
      network_tier = "PREMIUM"
    }

    network            = "https://www.googleapis.com/compute/v1/projects/data-infinity-374414/global/networks/default"
    network_ip         = "10.172.0.4"
    queue_count        = "0"
    stack_type         = "IPV4_ONLY"
    subnetwork         = "https://www.googleapis.com/compute/v1/projects/data-infinity-374414/regions/europe-west6/subnetworks/default"
    subnetwork_project = var.project_id
  }

  project = var.project_id

  reservation_affinity {
    type = "ANY_RESERVATION"
  }

  scheduling {
    automatic_restart   = "true"
    min_node_cpus       = "0"
    on_host_maintenance = "MIGRATE"
    preemptible         = "false"
    provisioning_model  = "STANDARD"
  }

  service_account {
    email  = "142008943512-compute@developer.gserviceaccount.com"
    scopes = ["https://www.googleapis.com/auth/devstorage.read_only", "https://www.googleapis.com/auth/logging.write", "https://www.googleapis.com/auth/monitoring.write", "https://www.googleapis.com/auth/service.management.readonly", "https://www.googleapis.com/auth/servicecontrol", "https://www.googleapis.com/auth/trace.append"]
  }

  shielded_instance_config {
    enable_integrity_monitoring = "true"
    enable_secure_boot          = "false"
    enable_vtpm                 = "true"
  }

  tags = ["app", "http-server", "https-server"]
  zone = var.zone_pj
}

resource "google_compute_instance" "jenkinsu" {
  boot_disk {
    auto_delete = "true"
    device_name = "jenkinsu"
    mode        = "READ_WRITE"
    source      = "https://www.googleapis.com/compute/v1/projects/data-infinity-374414/zones/europe-west6-a/disks/jenkinsu"
  }

  can_ip_forward = "false"

  confidential_instance_config {
    enable_confidential_compute = "false"
  }

  deletion_protection = "false"
  enable_display      = "false"
  machine_type        = "e2-medium"

  metadata = {
    ssh-keys = var.ssh-key
  }

  name = "jenkinsu"

  network_interface {
    access_config {
      network_tier = "PREMIUM"
    }

    network            = "https://www.googleapis.com/compute/v1/projects/data-infinity-374414/global/networks/default"
    network_ip         = "10.172.0.2"
    queue_count        = "0"
    stack_type         = "IPV4_ONLY"
    subnetwork         = "https://www.googleapis.com/compute/v1/projects/data-infinity-374414/regions/europe-west6/subnetworks/default"
    subnetwork_project = var.project_id
  }

  project = var.project_id

  reservation_affinity {
    type = "ANY_RESERVATION"
  }

  scheduling {
    automatic_restart   = "true"
    min_node_cpus       = "0"
    on_host_maintenance = "MIGRATE"
    preemptible         = "false"
    provisioning_model  = "STANDARD"
  }

  service_account {
    email  = "142008943512-compute@developer.gserviceaccount.com"
    scopes = ["https://www.googleapis.com/auth/compute.readonly", "https://www.googleapis.com/auth/devstorage.read_only", "https://www.googleapis.com/auth/logging.write", "https://www.googleapis.com/auth/monitoring.write", "https://www.googleapis.com/auth/service.management.readonly", "https://www.googleapis.com/auth/servicecontrol", "https://www.googleapis.com/auth/trace.append"]
  }

  shielded_instance_config {
    enable_integrity_monitoring = "true"
    enable_secure_boot          = "false"
    enable_vtpm                 = "true"
  }

  tags = ["http-server", "https-server", "jenkins"]
  zone = var.zone_pj
}
