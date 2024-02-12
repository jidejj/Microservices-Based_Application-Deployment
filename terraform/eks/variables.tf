variable "region" {
  description = "The AWS region where the EKS cluster will be created"
  default     = "eu-west-2"
}

variable "subnets" {
  description = "A list of subnet IDs where the EKS nodes will be deployed"
  type        = list(string)
}

variable "vpc_id" {
  description = "The ID of the VPC where the EKS cluster will be created"
  type        = list(string)
}

variable "cluster_name" {
  description = "The name of the EKS cluster"
  type        = list(string)
}

variable "cluster_version" {
  description = "The Kubernetes version for the EKS cluster"
  default     = 1.21
}

variable "node_groups" {
  description = "A map of node groups for the EKS cluster"
  type        = map(object({
    desired_capacity = number
    max_capacity     = number
    min_capacity     = number
    instance_type    = string
  }))
}
