output "iam_user_name" {
  description = "the user's name"
  value       = aws_iam_user.this[*].name
}

output "iam_user_arn" {
  value = aws_iam_user.this[*].arn
}

output "iam_user_unique_id" {
  description = "The unique ID assigned by AWS"
  value       = aws_iam_user.this[*].unique_id
}

output "secret_access_key" {
  description = "The secret access key id assigned by AWS"
  value       = aws_iam_access_key.this.*.secret
}

#output arn and name of iam user of ec2_admin user who can Allow- Modify,Create, Deny Delete ec2
output "iam_user_name_ec2" {
  value = aws_iam_user.ec2_admin_only[*].name
}
output "iam_user_arn_ec2" {
  value = aws_iam_user.ec2_admin_only[*].arn
}