resource "google_compute_instance" "default" {
  name         = var.instance_name
  machine_type = var.machine_type
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = data.google_compute_image.debian.self_link
    }
  }

  network_interface {
    network = "default"
    access_config {
      # Ephemeral IP
    }
  }
}

output "instance_external_ip" {
  value = google_compute_instance.default.network_interface[0].access_config[0].nat_ip
}

output "instance_self_link" {
  value = google_compute_instance.default.self_link
}

data "google_compute_image" "debian" {
  family  = "debian-11"
  project = "debian-cloud"
}