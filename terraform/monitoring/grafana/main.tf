provider "aws" {
  region = "eu-west-2"  
}

module "grafana" {
  source = "grafana/grafana/aws"
  cluster_name = "my-eks-cluster"
  namespace = "monitoring"
  release_name = "grafana"
}
