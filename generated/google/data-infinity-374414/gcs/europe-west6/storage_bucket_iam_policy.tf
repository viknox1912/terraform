resource "google_storage_bucket_iam_policy" "tfer--0978bcc9e87f61b8-bucket-tfstate" {
  bucket = "b/0978bcc9e87f61b8-bucket-tfstate"

  policy_data = <<POLICY
{
  "bindings": [
    {
      "members": [
        "projectEditor:data-infinity-374414",
        "projectOwner:data-infinity-374414"
      ],
      "role": "roles/storage.legacyBucketOwner"
    },
    {
      "members": [
        "projectViewer:data-infinity-374414"
      ],
      "role": "roles/storage.legacyBucketReader"
    }
  ]
}
POLICY
}
