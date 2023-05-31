terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region     = "us-east-1"
  access_key = "AKIA446CE2LCA2TKPF2M"
  secret_key = "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"
}

resource "aws_instance" "webserver" {
  ami           = "ami-02f3f602d23f1659d"
  instance_type = "t2.micro"

  tags = {
    Name = "Hysec"
  }
}
