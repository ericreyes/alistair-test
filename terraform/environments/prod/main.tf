terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

resource "aws_instance" "alistair_prod" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t3.medium"

  tags = {
    Name        = "alistair-prod-server"
    Environment = "production"
    ManagedBy   = "terraform"
  }
}

resource "aws_s3_bucket" "alistair_data" {
  bucket = "alistair-test-production-data"
  
  tags = {
    Environment = "production"
  }
}
