variable "region" {
  description = "The AWS region where the Alertmanager resources will be created"
  default     = "eu-west-2"
}

variable "namespace" {
  description = "The namespace for the Alertmanager resources"
  default     = "monitoring"
}

variable "cluster_name" {
  description = "The name of the EKS cluster where Alertmanager will be deployed"
  type        = string
}

variable "release_name" {
  description = "The name of the Alertmanager release"
  type        = string
}
