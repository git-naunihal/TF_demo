terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }

 backend "s3" {
    bucket         = "tf.lab"
    key            = "terraform.tfstate"
    region         = "us-east-1"
  }

}


provider "aws" {
 region = "us-east-1"
}


resource "aws_instance" "test_instance" {
 ami           = "ami-063d43db0594b521b"
 instance_type = "t2.nano"
 tags = {
   Name = "test_instance"
 }
}
