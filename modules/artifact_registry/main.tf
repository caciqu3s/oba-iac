resource "google_artifact_registry_repository" "obd-docker-repository" {
  location      = var.gcp_region
  repository_id = "obd-docker-repository"
  description   = "Docker Repository for OBD Project"
  format        = "DOCKER"
}