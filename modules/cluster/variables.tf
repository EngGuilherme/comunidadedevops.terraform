
variable "project_name" {
  type        = string
  description = "Project name to be used in the beggining of all Name tags"
}

variable "tags" {
  type        = map(any)
  description = "Tags to be added to AWS resources"
}

variable "public_subnet_1a" {
  type        = string
  description = "subnet to create AZ 1a"

}
variable "public_subnet_1b" {
  type        = string
  description = "subnet to create AZ 1b"

}