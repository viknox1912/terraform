resource "google_storage_default_object_acl" "tfer--0978bcc9e87f61b8-bucket-tfstate" {
  bucket      = "0978bcc9e87f61b8-bucket-tfstate"
  role_entity = ["OWNER:project-editors-142008943512", "OWNER:project-owners-142008943512", "READER:project-viewers-142008943512"]
}
