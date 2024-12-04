
variable "project_name" {
  type        = string
  description = "Project name to be used in the beggining of all Name tags"
}
variable "tags" {
  type        = map(any)
  description = "Tags to be added to AWS resources"
}
variable "cluster_name" {
  type        = string
  description = "EKS cluster name to create mng"
}
variable "subnet_priv_1a" {
  type        = string
  description = "Subnet ID from AZ 1a"
}
variable "subnet_priv_1b" {
  type        = string
  description = "Subnet ID from AZ 1b"
}