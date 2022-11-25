output "public_subnets" {
  description = "List of IDs of public subnets"
  value       = aws_subnet.public_subnets.id

}

output "public_subnets_cidr" {
  description = "List of IDs of public subnets"
  value       = aws_subnet.public_subnets.cidr_block

}

output "private_subnets" {
  description = "List of IDs of private subnets"
  value       = aws_subnet.private_subnets.id

}

output "private_subnets_cidr" {
  description = "List of IDs of private subnets"
  value       = aws_subnet.private_subnets.cidr_block

}
