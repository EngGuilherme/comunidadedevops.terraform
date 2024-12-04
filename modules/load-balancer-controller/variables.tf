
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