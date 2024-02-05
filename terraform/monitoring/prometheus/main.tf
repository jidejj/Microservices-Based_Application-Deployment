provider "aws" {
  region = "eu-west-2"  
}

module "prometheus" {
  source = "prometheus-community/prometheus/aws"
  cluster_name = "my-eks-cluster"
  namespace = "monitoring"
  release_name = "prometheus"
}
