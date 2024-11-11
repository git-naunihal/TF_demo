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
 ami           = "ami-0b72821e2f351e396"
 instance_type = "t2.micro"
 tags = {
   Name = "test_instance-GitHub-Action"
 }
}
