provider "aws"{
    region = "eu-west-2"
}

resource "aws_vpc" "my_aws_vpc_name" {
  cidr_block = "10.0.0.0/16"
}