# Pas variabilisé
# Provisioning d'une VM extrêmement cheap, pour un test de serveur HTTP avec Apache

resource "google_compute_instance" "first-vm-instance" {
  boot_disk {
    auto_delete = true
    device_name = "cheap-vm-instance"

    initialize_params {
      image = "projects/debian-cloud/global/images/debian-12-bookworm-v20240213"
      size  = 10
      type  = "pd-balanced"
    }

    mode = "READ_WRITE"
  }

  can_ip_forward      = false
  deletion_protection = false
  enable_display      = false

  machine_type = "n1-standard-1"
  name         = "cheap-vm-instance"

  network_interface {
    access_config {
      network_tier = "PREMIUM"
    }

    queue_count = 0
    stack_type  = "IPV4_ONLY"
    subnetwork  = "projects/${var.project_id}/regions/us-west1/subnetworks/default"
  }

  scheduling {
    automatic_restart   = false
    on_host_maintenance = "TERMINATE"
    preemptible         = false
    provisioning_model  = "SPOT"
  }

  service_account {
    email  = var.service_account
    scopes = [
      "https://www.googleapis.com/auth/compute" # Creates and runs virtual machines on Google Cloud Platform.
    ]
  }

  shielded_instance_config {
    enable_integrity_monitoring = true
    enable_secure_boot          = false
    enable_vtpm                 = true
  }

  tags = ["http-server"]
  zone = "europe-west1-b"
}
