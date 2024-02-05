provider "aws" {
  region = "eu-west-2"  
}

module "eks_cluster" {
  source               = "terraform-aws-modules/eks/aws"
  version              = "~> 1.0"
  
  cluster_name         = "my-eks-cluster"
  cluster_version      = "1.21"

  vpc_id               = "vpc-03cfd6c745203db34" 
  subnets              = ["subnet-0937c83f301438ed1", "subnet-0466b0a9a5fca5f3a", "subnet-001ce5d758f058dee"]  
   
  

  node_groups = {
     eks_nodes = {
      name             = "eks-nodes"
      desired_capacity = 2
      max_capacity     = 3
      min_capacity     = 1

      instance_type = "t2.micro"  
    }
  }
}
