terraform{
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "6.7.0"
        }
    }
}

# provide authentication here
provider "aws" {
    region = "us-east-1"
}
