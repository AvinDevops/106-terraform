terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "6.7.0"
    }
  }

  backend "s3" {
    bucket = "rev78s-remote-state"
    key    = "dynamic"
    region = "us-east-1"
    dynamodb_table = "daws78s-locking"
  }
}

#authenticatio here
provider "aws" {
    region = "us-east-1"
}
