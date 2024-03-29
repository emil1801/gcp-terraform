vm_config = {
  project       = "yrkmeeffnyhexzbd"
  region        = "us-central1"
  zone          = "us-central1-c"
  instance_name = "terraform-instance"
  machine_type  = "f1-micro"
  image         = "debian-cloud/debian-9"
}


labels = {
  name    = "db"
  env     = "dev"
  team    = "devops"
  quarter = "first"
  builtby = "me"
}
