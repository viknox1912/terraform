provider "google" {
  project = "data-infinity-374414"
}

terraform {
	required_providers {
		google = {
	    version = "~> 4.48.0"
		}
  }
}
