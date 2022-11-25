# create a public route table
resource "aws_route_table" "public-rt" {
    vpc_id = var.vpc_id
/*     route {
        cidr_block = "0.0.0.0/0"
        gateway_id = var.igw_id
    } */
    tags = merge(
        var.tags,
        var.public_rt_tags
    )
  
}

resource "aws_route" "public_internet_gateway" {
    route_table_id = aws_route_table.public-rt.id
    destination_cidr_block = "0.0.0.0/0"
    gateway_id = var.igw_id
}

resource "aws_route_table_association" "public-rta" {
  subnet_id      = var.publicsubnet_id
  route_table_id = aws_route_table.public-rt.id
}

# create a private route table

resource "aws_route_table" "private-rt" {
  vpc_id = var.vpc_id
/*   route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = var.ngw_id
  } */
  tags = merge(
      var.tags,
      var.private_rt_tags
  )
}

resource "aws_route" "private_nat_gateway" {
  route_table_id = aws_route_table.private-rt.id
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id = var.ngw_id
}

resource "aws_route_table_association" "private-rta" {
  subnet_id      = var.privatesubnet_id
  route_table_id = aws_route_table.private-rt.id
}
