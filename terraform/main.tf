

# Create VPC
module "vpc" {
  source = "./modules/vpc"

  cluster_name    = var.cluster_name
  vpc_cidr        = var.vpc_cidr
  private_subnets = var.private_subnets
  public_subnets  = var.public_subnets
  azs             = var.azs
}

# Create IAM roles and policies
module "iam" {
  source = "./modules/iam"

  cluster_name = var.cluster_name
}

# Create EKS Cluster
module "eks" {
  source = "./modules/eks"

  cluster_name          = var.cluster_name
  cluster_version       = var.cluster_version
  vpc_id                = module.vpc.vpc_id
  private_subnet_ids    = module.vpc.private_subnet_ids
  public_subnet_ids     = module.vpc.public_subnet_ids
  cluster_role_arn      = module.iam.cluster_role_arn
  node_group_role_arn   = module.iam.node_group_role_arn
  node_group_instance_types = var.node_group_instance_types
  desired_size          = var.desired_size
  max_size              = var.max_size
  min_size              = var.min_size
}

