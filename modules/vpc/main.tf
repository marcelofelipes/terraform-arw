resource "google_compute_network" "vpc" {
  name                    = var.vpc_name
  auto_create_subnetworks = true
}

resource "google_compute_subnetwork" "public_subnet" {
  name          = "${var.vpc_name}-public-subnet"
  network       = google_compute_network.vpc.id
  ip_cidr_range = var.public_subnet_cidr
  region        = var.region
}

resource "google_compute_subnetwork" "private_subnet" {
  name          = "${var.vpc_name}-private-subnet"
  network       = google_compute_network.vpc.id
  ip_cidr_range = var.private_subnet_cidr
  region        = var.region
}
