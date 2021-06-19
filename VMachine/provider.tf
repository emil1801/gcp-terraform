provider "google" {
  project = var.vm_config["project"]
  region  = var.vm_config["region"]
  zone    = var.vm_config["zone"]
}
resource "google_compute_instance" "vm_instance2" {
  name         = var.vm_config["instance_name"]
  machine_type = var.vm_config["machine_type"]
  boot_disk {
    initialize_params {
      image = var.vm_config["image"]
    }
  }
  network_interface {
    network = "default"
    access_config {
    }
  }
  labels = var.labels
}
variable "vm_config" {
  type = map(any)
}
variable "labels" {
  type = map(any)
}
