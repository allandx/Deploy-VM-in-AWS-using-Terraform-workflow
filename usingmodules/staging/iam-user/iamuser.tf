provider "aws" {
  region  = "ap-southeast-1"
  profile = var.profile
}

#########################################
# Create IAM user
#########################################
module "iam_user" {
  source              = "../../modules/iam-user"
  force_destroy       = "true"
  username            = var.username
  policy-ec2full_tags = var.policy-ec2full_tags
  iamuser_tags        = var.iamuser_tags
  tags                = var.tags

  /*tags = {
    Name         = "smu-dms-stage-iamuser"
    Project-code = "smu-dms"
    Environment  = "staging"
  }
  */
  create_iam_access_key = var.create_iam_access_key
}

#########################################
# IAM assumable role for admin
#########################################
module "iam_assumable_role_admin" {
  source = "../../modules/iam-assumable-role"

  trusted_role_arns = var.trusted_role_arns
  /*
  trusted_role_services = [
    #"codedeploy.amazonaws.com"
  ]
  */
  create_admin_role = var.create_admin_role
  #create_instance_profile = var.create_instance_profile
  admin_role_name         = var.admin_role_name
  admin_role_requires_mfa = var.admin_role_requires_mfa

}