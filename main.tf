provider "google" {
  project = "your-gcp-project-id"  # Replace with your GCP project ID
  region  = "us-central1"          # Change this to your preferred region
}

resource "google_compute_instance" "default" {
  name         = "terraform-instance"
  machine_type = "f1-micro"
  zone         = "us-central1-a"  # Change this to your preferred zone

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-10"  # Use an appropriate image
    }
  }

  network_interface {
    network = "default"

    access_config {
      // Ephemeral IP
    }
  }
}