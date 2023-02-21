resource "google_compute_disk" "tfer--europe-west6-a-002F-app-1" {
  image                     = "https://www.googleapis.com/compute/v1/projects/centos-cloud/global/images/centos-7-v20230203"
  name                      = "app-1"
  physical_block_size_bytes = "4096"
  project                   = "data-infinity-374414"
  provisioned_iops          = "0"
  size                      = "20"
  type                      = "pd-balanced"
  zone                      = "europe-west6-a"
}

resource "google_compute_disk" "tfer--europe-west6-a-002F-app-2" {
  image                     = "https://www.googleapis.com/compute/v1/projects/centos-cloud/global/images/centos-7-v20230203"
  name                      = "app-2"
  physical_block_size_bytes = "4096"
  project                   = "data-infinity-374414"
  provisioned_iops          = "0"
  size                      = "20"
  type                      = "pd-balanced"
  zone                      = "europe-west6-a"
}

resource "google_compute_disk" "tfer--europe-west6-a-002F-jenkinsu" {
  image                     = "https://www.googleapis.com/compute/v1/projects/centos-cloud/global/images/centos-7-v20230203"
  name                      = "jenkinsu"
  physical_block_size_bytes = "4096"
  project                   = "data-infinity-374414"
  provisioned_iops          = "0"
  size                      = "50"
  type                      = "pd-balanced"
  zone                      = "europe-west6-a"
}
