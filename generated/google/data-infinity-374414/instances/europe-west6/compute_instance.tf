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
    ssh-keys = "al3x961:ecdsa-sha2-nistp256 AAAAE2VjZHNhLXNoYTItbmlzdHAyNTYAAAAIbmlzdHAyNTYAAABBBFoRTbAhb48/D+EgaBg9/kHTaUC0VZZsXSo7ysNYmlk5FqcqcdDMhqHntCBeCSWCMlt/2usRrJ5LNfbe0WBsNgg= google-ssh {\"userName\":\"al3x961@gmail.com\",\"expireOn\":\"2023-02-21T18:46:47+0000\"}\nal3x961:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCvOkTOYgD6bJpCTHZ9EjJne5S2Zij5ioMMJ1/78DERW4rhvB9FTS/X4cA+ys1GqDS3V119au6jN2+apOcG2MY+peIHKKrOK4uj3np0v44I/wJQ1wm9cvq/jHrB4gnPkXIQr5q5XgSqZBrFyPla3V20I4rQ9UlfTUh83GtgXGIPGDML7U1x+iutAVdGz4yfpyg6WBSzR/T6PpIVzA7rValaQW25VIlTi9SHqD6hRUjhDndlWlOF01+VJ8Vy0J7NOjW5wfCv2Y9kSqJiyz/oUlFFUrj37PG/g2pkHGJMEAXgeFSH+b40NVc8qBlRbP9P6C3ZpNHGjMIEjgn46w9/8rFn google-ssh {\"userName\":\"al3x961@gmail.com\",\"expireOn\":\"2023-02-21T18:47:01+0000\"}\nssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQChkJEPAUWLzGkV+4CLvHzjiIExDiOSTtGMwKHX8Pe7JVswhi3yBpwS76m/3rJLesiWXviCEZRF/pIKZSy8WkXQeSKGNq001b0XJ236ktX9Cp2zxaSmFEuh5tXwT2Y43f95PqY+pYZ4CElTx8yP5iySKVtHJekULF4oB/z5x/1I3autTlBb6QxqDawOpJQWDwc6yKXDUmnoivxPqzmM1Mcq4bznMsyipqQP6dOXNoXB9i5/L4hj7zsOppVGaz08T8q6VMJ4951IcOsWdIgFxwxM/q5zKut+YAK4iWk7Z4ScW/o656tTph75sbNbxtyQiooERp/hFk1IKmFq4gspRUBj viknox"
  }

  name = "app-1"

  network_interface {
    access_config {
      nat_ip       = "34.65.30.203"
      network_tier = "PREMIUM"
    }

    network            = "https://www.googleapis.com/compute/v1/projects/data-infinity-374414/global/networks/default"
    network_ip         = "10.172.0.3"
    queue_count        = "0"
    stack_type         = "IPV4_ONLY"
    subnetwork         = "https://www.googleapis.com/compute/v1/projects/data-infinity-374414/regions/europe-west6/subnetworks/default"
    subnetwork_project = "data-infinity-374414"
  }

  project = "data-infinity-374414"

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
  zone = "europe-west6-a"
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
    ssh-keys = "al3x961:ecdsa-sha2-nistp256 AAAAE2VjZHNhLXNoYTItbmlzdHAyNTYAAAAIbmlzdHAyNTYAAABBBFoRTbAhb48/D+EgaBg9/kHTaUC0VZZsXSo7ysNYmlk5FqcqcdDMhqHntCBeCSWCMlt/2usRrJ5LNfbe0WBsNgg= google-ssh {\"userName\":\"al3x961@gmail.com\",\"expireOn\":\"2023-02-21T18:46:47+0000\"}\nal3x961:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCvOkTOYgD6bJpCTHZ9EjJne5S2Zij5ioMMJ1/78DERW4rhvB9FTS/X4cA+ys1GqDS3V119au6jN2+apOcG2MY+peIHKKrOK4uj3np0v44I/wJQ1wm9cvq/jHrB4gnPkXIQr5q5XgSqZBrFyPla3V20I4rQ9UlfTUh83GtgXGIPGDML7U1x+iutAVdGz4yfpyg6WBSzR/T6PpIVzA7rValaQW25VIlTi9SHqD6hRUjhDndlWlOF01+VJ8Vy0J7NOjW5wfCv2Y9kSqJiyz/oUlFFUrj37PG/g2pkHGJMEAXgeFSH+b40NVc8qBlRbP9P6C3ZpNHGjMIEjgn46w9/8rFn google-ssh {\"userName\":\"al3x961@gmail.com\",\"expireOn\":\"2023-02-21T18:47:01+0000\"}\nssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQChkJEPAUWLzGkV+4CLvHzjiIExDiOSTtGMwKHX8Pe7JVswhi3yBpwS76m/3rJLesiWXviCEZRF/pIKZSy8WkXQeSKGNq001b0XJ236ktX9Cp2zxaSmFEuh5tXwT2Y43f95PqY+pYZ4CElTx8yP5iySKVtHJekULF4oB/z5x/1I3autTlBb6QxqDawOpJQWDwc6yKXDUmnoivxPqzmM1Mcq4bznMsyipqQP6dOXNoXB9i5/L4hj7zsOppVGaz08T8q6VMJ4951IcOsWdIgFxwxM/q5zKut+YAK4iWk7Z4ScW/o656tTph75sbNbxtyQiooERp/hFk1IKmFq4gspRUBj viknox"
  }

  name = "app-2"

  network_interface {
    access_config {
      nat_ip       = "34.65.133.77"
      network_tier = "PREMIUM"
    }

    network            = "https://www.googleapis.com/compute/v1/projects/data-infinity-374414/global/networks/default"
    network_ip         = "10.172.0.4"
    queue_count        = "0"
    stack_type         = "IPV4_ONLY"
    subnetwork         = "https://www.googleapis.com/compute/v1/projects/data-infinity-374414/regions/europe-west6/subnetworks/default"
    subnetwork_project = "data-infinity-374414"
  }

  project = "data-infinity-374414"

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
  zone = "europe-west6-a"
}

resource "google_compute_instance" "tfer--jenkinsu" {
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
    ssh-keys = "al3x961:ecdsa-sha2-nistp256 AAAAE2VjZHNhLXNoYTItbmlzdHAyNTYAAAAIbmlzdHAyNTYAAABBBFoRTbAhb48/D+EgaBg9/kHTaUC0VZZsXSo7ysNYmlk5FqcqcdDMhqHntCBeCSWCMlt/2usRrJ5LNfbe0WBsNgg= google-ssh {\"userName\":\"al3x961@gmail.com\",\"expireOn\":\"2023-02-21T18:46:47+0000\"}\nal3x961:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCvOkTOYgD6bJpCTHZ9EjJne5S2Zij5ioMMJ1/78DERW4rhvB9FTS/X4cA+ys1GqDS3V119au6jN2+apOcG2MY+peIHKKrOK4uj3np0v44I/wJQ1wm9cvq/jHrB4gnPkXIQr5q5XgSqZBrFyPla3V20I4rQ9UlfTUh83GtgXGIPGDML7U1x+iutAVdGz4yfpyg6WBSzR/T6PpIVzA7rValaQW25VIlTi9SHqD6hRUjhDndlWlOF01+VJ8Vy0J7NOjW5wfCv2Y9kSqJiyz/oUlFFUrj37PG/g2pkHGJMEAXgeFSH+b40NVc8qBlRbP9P6C3ZpNHGjMIEjgn46w9/8rFn google-ssh {\"userName\":\"al3x961@gmail.com\",\"expireOn\":\"2023-02-21T18:47:01+0000\"}\nssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQChkJEPAUWLzGkV+4CLvHzjiIExDiOSTtGMwKHX8Pe7JVswhi3yBpwS76m/3rJLesiWXviCEZRF/pIKZSy8WkXQeSKGNq001b0XJ236ktX9Cp2zxaSmFEuh5tXwT2Y43f95PqY+pYZ4CElTx8yP5iySKVtHJekULF4oB/z5x/1I3autTlBb6QxqDawOpJQWDwc6yKXDUmnoivxPqzmM1Mcq4bznMsyipqQP6dOXNoXB9i5/L4hj7zsOppVGaz08T8q6VMJ4951IcOsWdIgFxwxM/q5zKut+YAK4iWk7Z4ScW/o656tTph75sbNbxtyQiooERp/hFk1IKmFq4gspRUBj viknox"
  }

  name = "jenkinsu"

  network_interface {
    access_config {
      nat_ip       = "34.65.41.25"
      network_tier = "PREMIUM"
    }

    network            = "https://www.googleapis.com/compute/v1/projects/data-infinity-374414/global/networks/default"
    network_ip         = "10.172.0.2"
    queue_count        = "0"
    stack_type         = "IPV4_ONLY"
    subnetwork         = "https://www.googleapis.com/compute/v1/projects/data-infinity-374414/regions/europe-west6/subnetworks/default"
    subnetwork_project = "data-infinity-374414"
  }

  project = "data-infinity-374414"

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
  zone = "europe-west6-a"
}
