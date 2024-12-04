module "eks_network" {
  source       = "./modules/network"
  cidr_block   = var.cidr_block
  project_name = var.project_name
  tags         = local.tags

}

module "eks_cluster_role" {
  source           = "./modules/cluster"
  project_name     = var.project_name
  tags             = local.tags
  public_subnet_1a = module.eks_network.subnet_pub_1a
  public_subnet_1b = module.eks_network.subnet_pub_1b

}

module "managed_node_group" {
  source         = "./modules/managed-node-group"
  project_name   = var.project_name
  tags           = local.tags
  cluster_name   = module.eks_cluster_role.cluster_name
  subnet_priv_1a = module.eks_network.subnet_priv_1a
  subnet_priv_1b = module.eks_network.subnet_priv_1b

}

module "eks_controller_policy" {
  source       = "./modules/load-balancer-controller"
  project_name = var.project_name
  tags         = local.tags
  oidc         = module.eks_cluster_role.oidc_identity

}