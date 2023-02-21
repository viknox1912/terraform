data "terraform_remote_state" "networks" {
  backend = "local"

  config = {
    path = "../../../../../generated/google/data-infinity-374414/networks/europe-west6/terraform.tfstate"
  }
}
