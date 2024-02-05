variable "region" {
  description = "The AWS region where the Grafana resources will be created"
  default     = "eu-west-2"
}

variable "namespace" {
  description = "The namespace for the Grafana resources"
  default     = "monitoring"
}

variable "cluster_name" {
  description = "The name of the EKS cluster where Grafana will be deployed"
  type        = string
}

variable "release_name" {
  description = "The name of the Grafana release"
  type        = string
}
