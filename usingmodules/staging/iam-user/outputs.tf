
#output for IAM user with AWS managed admin access
output "iam_user_name" {
  description = "The iam user's name"
  value       = module.iam_user.iam_user_name
}

output "iam_user_arn" {
  description = "The ARN assigned by AWS for this user"
  value       = module.iam_user.iam_user_arn
}

output "iam_user_unique_id" {
  description = "The unique ID assigned by AWS"
  value       = module.iam_user.iam_user_unique_id
}

# Output for ec2_admin user who can Allow- Modify,Create, Deny Delete
output "iam_user_name_ec2" {
  description = "The iam user's name"
  value       = module.iam_user.iam_user_name_ec2
}

output "iam_user_arn_ec2" {
  description = "The ARN assigned by AWS for this user"
  value       = module.iam_user.iam_user_arn_ec2
}
