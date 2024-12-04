locals {
  split_result = split("/", var.oidc)
  oidc         = local.split_result[length(local.split_result) - 1]
}