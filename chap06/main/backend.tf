terraform {
  backend "gcs" {
    bucket = "new-bucket-tfstate"
    prefix = "chap06/main"
  }
}
