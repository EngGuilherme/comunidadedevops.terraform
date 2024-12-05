output "eks_vpc_config" {
  value = aws_eks_cluster.eks_cluster.vpc_config
}
output "oidc" {
  value = data.tls_certificate.eks_oidc_tls_certificate

}
output "cluster_name" {
  value = aws_eks_cluster.eks_cluster.id

}
output "oidc_identity" {
  value = aws_eks_cluster.eks_cluster.identity[0].oidc[0].issuer

}
output "cluster_endpoint" {
  value = aws_eks_cluster.eks_cluster.endpoint

}
output "cluster_ca_cert" {
  value = aws_eks_cluster.eks_cluster.certificate_authority[0].data

}
output "clusterName" {
  value = aws_eks_cluster.eks_cluster.name

}