#to test output of a set(string) since for_each only accepts map or set.
output "namerecord" {
  description = "name of record created"
  value=values(aws_route53_record.this)[*].name
}
