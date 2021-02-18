remote_state {
  backend = "gcs"

  generate = {
    path = "backend.tf"
    if_exists = "overwrite_terragrunt"
  }

  config = {
    bucket   = "terraform-self-study-b-terraform-state"
    prefix   = "${path_relative_to_include()}/terraform.tfstate"

    gcs_bucket_labels = {
      owner = "terragrunt_test"
      name  = "terraform_state_storage"
    }
  }
}

inputs = {
  project = "terraform-self-study"
}
