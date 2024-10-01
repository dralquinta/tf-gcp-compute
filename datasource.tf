# Potentially useful to fetch project or network details if not known upfront
data "google_compute_network" "default" {
  name = var.network_name
}