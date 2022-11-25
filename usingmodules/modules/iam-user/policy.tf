#Create custom ec2_full access policy
resource "aws_iam_policy" "ec2_full" {
  name = "ec2_full"
  #tags = var.tags
  tags = merge(
    var.tags,
    var.policy-ec2full_tags
  )

  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
            "Action": "ec2:*",
            "Effect": "Allow",
            "Resource": "*"
        },
        {
            "Effect": "Allow",
            "Action": "elasticloadbalancing:*",
            "Resource": "*"
        },
        {
            "Effect": "Allow",
            "Action": "cloudwatch:*",
            "Resource": "*"
        },
        {
            "Effect": "Allow",
            "Action": "autoscaling:*",
            "Resource": "*"
        },
        {
            "Effect": "Allow",
            "Action": "iam:CreateServiceLinkedRole",
            "Resource": "*",
            "Condition": {
                "StringEquals": {
                    "iam:AWSServiceName": [
                        "autoscaling.amazonaws.com",
                        "ec2scheduled.amazonaws.com",
                        "elasticloadbalancing.amazonaws.com",
                        "spot.amazonaws.com",
                        "spotfleet.amazonaws.com",
                        "transitgateway.amazonaws.com"
                    ]
                }
            }
        }
    ]
}
EOF
}

#Create a policy for EC2 Admin (ec2_manage_infra) that Allow Modify,create,Deny Delete
resource "aws_iam_policy" "ec2_admin" {
  name = "ec2_manage_infra"
  description = "Create a policy for EC2 Admin (ec2_manage_infra) that Allow Modify,create,Deny Delete EC2"
  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "Stmt1653036152032",
      "Action": [
        "ec2:TerminateInstances"
      ],
      "Effect": "Deny",
      "Resource": "*"
    },
    {
      "Sid": "Stmt1653036254542",
      "Action": "ec2:*",
      "Effect": "Allow",
      "Resource": "*"
    }
  ]
}

EOF
}



#Create amazon managed s3 full access 
data "aws_iam_policy" "s3_full" {
  name = "AmazonS3FullAccess"
}

data "aws_iam_policy" "admin_full" {
  name = "AdministratorAccess"
}