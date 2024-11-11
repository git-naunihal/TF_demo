terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }

  backend "s3" {
    bucket = "tf.lab"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }

}


provider "aws" {
  region = "us-east-1"
}
