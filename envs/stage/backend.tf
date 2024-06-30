terraform {
  backend "gcs" {
    bucket = "bkt-tfstate-obd-stage" 
    prefix = "terraform/state"
  }
}