resource "google_compute_instance" "website-server" {
  project      = var.project
  name         = "dev-website-server"
  machine_type = "e2-medium"
  zone         = "europe-west3-a"

  tags = ["dev", "webserver"]

  boot_disk {
    initialize_params {
      image = "projects/ubuntu-os-cloud/global/images/ubuntu-2004-focal-v20210211"
    }
  }

  network_interface {

    network = "default"

    access_config {
      network_tier = "PREMIUM"
    }
  }

}
