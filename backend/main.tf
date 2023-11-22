terraform {
  backend "s3" {
    key = "terraform/tfstate.tfstate"
    bucket = "prabhat-backnd-remote"
    region = "eu-west-2"
    access_key = ""
    secret_key = ""
  }
}