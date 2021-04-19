terraform {
  backend "remote" {
    organization = "tanolester"

    workspaces {
      name = "TF-AWS-Console"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "ec2instance-ni" {
  ami           = "ami-0742b4e673072066f"
  instance_type = "t2.micro"
  tags = {
    "name" = "first-ec2-from-tf"
  }
}

