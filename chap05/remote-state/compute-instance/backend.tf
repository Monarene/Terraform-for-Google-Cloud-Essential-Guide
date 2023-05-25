terraform {
  backend "gcs" {
    bucket = "new-bucket-tfstate"
    prefix = "chap05/remote-state/compute-instance"
  }
}
