provider "aws" {
  region = "eu-west-2"  
}

resource "aws_vpc" "my_vpc" {
  cidr_block = "10.0.0.0/16"
  enable_dns_support = true
  enable_dns_hostnames = true
}

resource "aws_subnet" "my_subnet" {
  count = 3
  cidr_block = "10.0.${count.index + 1}.0/24"
  vpc_id = aws_vpc.my_vpc.id
  availability_zone = "eu-west-2a"  
}


