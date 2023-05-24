terraform {
  backend "gcs" {
    bucket = "new-bucket-tfstate"
    prefix = "chap04/registry"
  }
}
