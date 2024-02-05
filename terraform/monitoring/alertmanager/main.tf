provider "aws" {
  region = "eu-west-2"  
}

module "alertmanager" {
  source = "prometheus-community/alertmanager/aws"
  cluster_name = "my-eks-cluster"
  namespace = "monitoring"
  release_name = "alertmanager"
}
