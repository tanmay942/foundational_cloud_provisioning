terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.54.1"
    }
  }
}

provider "aws" {
  region = var.region
}


resource "aws_instance" "tanmay_server" {
  ami           = "ami-0c0e147c706360bd7"
  instance_type = "t3.nano"

  tags = {
    Name = "TanmayTerraformServer"
  }
}


