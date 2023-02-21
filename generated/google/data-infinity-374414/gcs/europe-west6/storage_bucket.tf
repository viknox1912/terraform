resource "google_storage_bucket" "tfer--0978bcc9e87f61b8-bucket-tfstate" {
  default_event_based_hold    = "false"
  force_destroy               = "false"
  location                    = "EU"
  name                        = "0978bcc9e87f61b8-bucket-tfstate"
  project                     = "data-infinity-374414"
  public_access_prevention    = "inherited"
  requester_pays              = "false"
  storage_class               = "STANDARD"
  uniform_bucket_level_access = "false"

  versioning {
    enabled = "true"
  }
}
