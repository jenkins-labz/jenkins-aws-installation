terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region = var.region
  shared_credentials_file = "/home/amaury/.aws/credencials"
  profile = "devops"
}

resource "aws_instance" "tutorials" {
  ami           = var.ami
  instance_type = var.instance_type
}