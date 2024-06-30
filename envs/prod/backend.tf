terraform {
  backend "gcs" {
    bucket = "bkt-tfstate-obd-prod" 
    prefix = "terraform/state"
  }
}