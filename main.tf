provider "aws" {
  region = var.region
}

module "eks_cluster" {
  source             = "./modules/cluster"
  cluster_name       = var.cluster_name
  cluster_role_arn   = var.cluster_role_arn
  subnet_ids         = module.vpc.private_subnet_ids
  kubernetes_version = "1.29"
}

module "eks_nodegroup" {
  source          = "./modules/node"
  cluster_name    = var.cluster_name
  node_group_name = "default-node-group"
  node_role_arn   = var.node_role_arn
  subnet_ids      = module.vpc.private_subnet_ids
  desired_size    = 1
  min_size        = 1
  max_size        = 1
  instance_type   = "t3.medium"

  depends_on = [module.eks_cluster]
}


module "vpc" {
  source          = "./modules/vpc"
  vpc_name        = var.vpc_name
  vpc_cidr        = var.vpc_cidr
  public_subnets  = var.public_subnets
  private_subnets = var.private_subnets
  azs             = var.azs
}