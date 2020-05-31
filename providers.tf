provider "aws" {
  region = "${var.region}"
}

terraform {
  backend "s3" {
    bucket = "javahome-tf-20201234567"
    key    = "terraform.tfstate"
    region = "ap-south-1"
    dynamodb_table = "javahome-tf"
  }
}
