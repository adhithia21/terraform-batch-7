terraform {
  backend "gcs" {}
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.65.2"
    }
  }
}

provider "google" {
  # Configuration options
  project     = var.project
  region      = var.region
  zone        = var.zone
  credentials = var.credentials
}


resource "google_compute_network" "default" {
  name                    = var.name
  auto_create_subnetworks = var.auto_create_subnetworks
}

resource "google_compute_subnetwork" "subnet-test" {
  count         = length(var.subnet_region)
  name          = var.name
  network       = google_compute_network.default.id
  ip_cidr_range = var.subnet_ip_cidr_range[count.index]
  region        = var.subnet_region[count.index]
}
