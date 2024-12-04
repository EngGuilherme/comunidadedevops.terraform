output "subnet_pub_1a" {
  value = module.eks_network.subnet_pub_1a
}
output "subnet_pub_1b" {
  value = module.eks_network.subnet_pub_1b
}
output "subnet_priv_1a" {
  value = module.eks_network.subnet_priv_1a
}
output "subnet_priv_1b" {
  value = module.eks_network.subnet_priv_1b
}
output "eks_vpc_config" {
  value = module.eks_cluster_role.eks_vpc_config
}
output "oidc" {
  value = module.eks_cluster_role.oidc_identity
}
output "cluster_name" {
  value = module.eks_cluster_role.cluster_name
}
output "cluster_endpoint" {
  value = module.eks_cluster_role.cluster_endpoint
}
output "cluster_ca_cert" {
  value = module.eks_cluster_role.cluster_ca_cert
}