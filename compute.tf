resource "google_compute_instance" "default" {
  name         = var.instance_name
  machine_type = var.machine_type
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = var.image   
    }
  }

  network_interface {
    network = var.network_name   
  }

  # Add metadata or tags if required
  metadata = {
    foo = "bar"
  }

  # Or tags
  tags = ["foo", "bar"]
}