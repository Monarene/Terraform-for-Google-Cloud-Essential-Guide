data "terraform_remote_state" "foundation" {
  backend = "gcs"
  config = {
    bucket = "new-bucket-tfstate"
    prefix = "chap06/foundation"
  }
}
