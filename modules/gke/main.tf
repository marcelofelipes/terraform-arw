resource "google_container_cluster" "primary" {
  name     = "${var.gke_cluster_name}"
  location = var.gke_location
  remove_default_node_pool = true
  initial_node_count       = 1
}

resource "google_container_node_pool" "primary_preemptible_nodes" {
  name       = var.gke_nodepool_name
  location   = var.gke_location
  cluster    = var.gke_cluster_name
  node_count = var.gke_nodecount
  autoscaling {
    min_node_count = 1
    max_node_count = 5
  }
  node_config {
    preemptible  = true
    machine_type = var.gke_machine_type
    disk_size_gb = var.disk_size_gb
    service_account = var.service_account_email
    oauth_scopes    = [
      "https://www.googleapis.com/auth/cloud-platform"
    ]
  }
}