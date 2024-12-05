
variable "project_name" {
  type        = string
  description = "Project name to be used in the beggining of all Name tags"
}
variable "tags" {
  type        = map(any)
  description = "Tags to be added to AWS resources"
}
variable "oidc" {
  type        = string
  description = "HTTPS URL OIDC provider of the EKS Cluster"
}
variable "clusterName" {
  type        = string
  description = "EKS Cluster Name"
}
variable "vpc_id" {
  type        = string
  description = "EKS VPC name"
}