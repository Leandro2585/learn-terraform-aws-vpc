terraform {
    required_version = "1.9.0"
    required_providers {
        aws = ">=5.56.1"
        local = ">=2.5.1"
    }
}

provider "aws" {
    region = "us-east-1"
}