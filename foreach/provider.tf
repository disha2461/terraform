terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.36.0"
    }
  }
  backend "s3" {
    bucket = "robos1-remote-state"
    key = "for_each-demo"
    region = "us-east-1"
    dynamodb_table = "roboshop-locking"
  }
}

provider "aws" {
  region = "us-east-1"
}