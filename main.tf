provider “aws” {
  region = “eu-west-1”
}

terraform {
  backend "s3" {
    bucket         = "tf.lab"
    key            = "terraform.tfstate"
    region         = "eu-west-1"
}

resource "aws_instance" "test_instance" {
 ami           = "ami-830c94e3"
 instance_type = "t2.nano"
 tags = {
   Name = "test_instance"
 }
}
