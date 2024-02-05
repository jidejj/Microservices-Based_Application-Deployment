variable "region" {
  description = "The AWS region where the VPC and subnets will be created"
  default     = "us-west-2"
}

variable "cidr_block" {
  description = "The CIDR block for the VPC"
  default     = "10.0.0.0/16"
}

variable "availability_zones" {
  description = "A list of availability zones where subnets will be created"
  type        = list(string)
  default     = ["eu-west-2a", "eu-west-2b", "eu-west-2c"]
}
