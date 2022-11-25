provider "aws" {
  region = "ap-southeast-1"
}

module "vpc" {
  source               = "../modules/vpc"
  vpc_id               = module.vpc.vpc_id
  instance_tenancy     = var.instance_tenancy
  cidr_block           = var.cidr_block
  enable_dns_hostnames = var.enable_dns_hostnames
  enable_ipv6          = var.enable_ipv6
<<<<<<< HEAD
  #infra_environment = var.infra_environment
=======
>>>>>>> main
  vpc_tags = var.vpc_tags
  tags     = var.tags
}

module "subnet" {
  source                  = "../modules/subnet"
  vpc_id                  = module.vpc.vpc_id
  public_subnets          = var.public_subnets
  private_subnets         = var.private_subnets
  map_public_ip_on_launch = var.map_public_ip_on_launch
  tags                    = var.tags
  publicsubnet_tags       = var.publicsubnet_tags
  privatesubnet_tags      = var.privatesubnet_tags

}

module "natgw" {
  source             = "../modules/natgw"
  subnet_id          = module.subnet.private_subnets
  enable_nat_gateway = var.enable_nat_gateway
  connectivity_type  = var.connectivity_type
  tags               = var.tags
  natgw_tags         = var.natgw_tags
}
