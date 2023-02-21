resource "google_compute_subnetwork" "tfer--default" {
  ip_cidr_range              = "10.172.0.0/20"
  name                       = "default"
  network                    = "${data.terraform_remote_state.networks.outputs.google_compute_network_tfer--default_self_link}"
  private_ip_google_access   = "false"
  private_ipv6_google_access = "DISABLE_GOOGLE_ACCESS"
  project                    = "data-infinity-374414"
  purpose                    = "PRIVATE"
  region                     = "europe-west6"
  stack_type                 = "IPV4_ONLY"
}
