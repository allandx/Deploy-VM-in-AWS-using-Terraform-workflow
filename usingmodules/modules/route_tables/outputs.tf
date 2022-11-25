output "public_route_table_ids" {
  description = "List of IDs of public route tables"
  value       = aws_route_table.public-rt.id
}

output "private_route_table_ids" {
  description = "List of IDs of private route tables"
  value       = aws_route_table.private-rt.id
}
