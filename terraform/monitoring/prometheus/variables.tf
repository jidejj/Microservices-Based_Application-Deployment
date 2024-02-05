variable "region" {
  description = "The AWS region where the Prometheus resources will be created"
  default     = "eu-west-2"
}

variable "namespace" {
  description = "The namespace for the Prometheus resources"
  default     = "monitoring"
}

variable "cluster_name" {
  description = "The name of the EKS cluster where Prometheus will be deployed"
  type        = string
}

variable "release_name" {
  description = "The name of the Prometheus release"
  type        = string
}
