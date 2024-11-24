resource "aws_subnet" "eks_subnet_public_1a" {
  vpc_id                  = aws_vpc.eks_vpc.id
  cidr_block              = cidrsubnet(var.cidr_block, 8, 1)
  availability_zone       = "${data.aws_region.current.name}a" #Same name as the provider name
  map_public_ip_on_launch = true

  tags = merge(
    local.tags, {
      Name                     = "comunidadedevops-vpc",
      "kubernetes.io/role/elb" = 1
    }
  )

}
resource "aws_subnet" "eks_subnet_public_1b" {
  vpc_id                  = aws_vpc.eks_vpc.id
  cidr_block              = cidrsubnet(var.cidr_block, 8, 2)
  availability_zone       = "${data.aws_region.current.name}b" #Same name as the provider name
  map_public_ip_on_launch = true


  tags = merge(
    local.tags, {
      Name                     = "comunidadedevops-vpc",
      "kubernetes.io/role/elb" = 1
    }
  )
}