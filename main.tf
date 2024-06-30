provider "google" {
  project = var.gcp_project_id
  region  = var.gcp_region
  zone    = var.gcp_zone
}

module "obd-docker-repository" {
  source = "./modules/artifact_registry"
  gcp_region = "us-central1"
}