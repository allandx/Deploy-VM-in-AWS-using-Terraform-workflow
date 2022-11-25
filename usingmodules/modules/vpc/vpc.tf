# Create a VPC
resource "aws_vpc" "vpc" {
  cidr_block           = var.cidr_block
  instance_tenancy     = var.instance_tenancy
  enable_dns_hostnames = var.enable_dns_hostnames
  assign_generated_ipv6_cidr_block = var.enable_ipv6

  tags = merge(
    var.tags,
    var.vpc_tags
  )
}
