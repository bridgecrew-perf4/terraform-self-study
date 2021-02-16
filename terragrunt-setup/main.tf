resource "google_storage_bucket" "terraform-bucket" {
  project = "terraform-self-study"
  name          = "terraform-self-study-b-terraform-state"
  location      = "europe-west3"
}
