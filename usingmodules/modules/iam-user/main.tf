#Creating users
resource "aws_iam_user" "this" {
  count = length(var.username)
  name  = element(var.username, count.index)
  #tags  = var.tags
  tags = merge(
    var.tags,
    var.iamuser_tags
  )
}
#Attach custom-managed policy to user
resource "aws_iam_user_policy_attachment" "ec2-user-full" {
  count      = length(var.username)
  user       = element(aws_iam_user.this.*.name, count.index)
  policy_arn = aws_iam_policy.ec2_full.arn
}

#Attach s3 amzn full access policy to user
resource "aws_iam_user_policy_attachment" "s3_full" {
  count      = length(var.username)
  user       = element(aws_iam_user.this.*.name, count.index)
  policy_arn = data.aws_iam_policy.s3_full.arn
}

#Attach amzn full admin access policy to user
resource "aws_iam_user_policy_attachment" "admin_full" {
  count      = length(var.username)
  user       = element(aws_iam_user.this.*.name, count.index)
  policy_arn = data.aws_iam_policy.admin_full.arn

}
resource "aws_iam_access_key" "this" {
  count = length(var.username)
  user  = element(aws_iam_user.this.*.name, count.index)

}

#Create ec2_admin user who can Allow- Modify,Create, Deny Delete
resource "aws_iam_user" "ec2_admin_only" {
  name="smu_ec2_manage_infra"
  tags = merge(
    var.tags,
    var.iamuser_tags
  )
}
#Attach ec2_manage_infra policy to user
resource "aws_iam_user_policy_attachment" "ec2_admin_only" {
  user       = aws_iam_user.ec2_admin_only.name
  policy_arn = aws_iam_policy.ec2_admin.arn
}

