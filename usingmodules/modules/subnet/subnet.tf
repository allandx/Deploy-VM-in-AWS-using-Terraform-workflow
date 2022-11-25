########################
# Create a list public subnet
########################

resource "aws_subnet" "public_subnets" {
  count = length(var.public_subnets) > 0 ? length(var.public_subnets) : 0
  
  vpc_id                  = var.vpc_id
  cidr_block = element(var.public_subnets,count.index)
  map_public_ip_on_launch = var.map_public_ip_on_launch

  tags = merge(
    var.tags,
    var.publicsubnet_tags
  )


}

#########################
# Create a list  private subnet
#########################

resource "aws_subnet" "private_subnets" {
  
  vpc_id     = var.vpc_id
  cidr_block = var.private_subnets

  tags = merge(
    var.tags,
    var.privatesubnet_tags
  )
}
