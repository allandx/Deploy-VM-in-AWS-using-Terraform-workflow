provider "aws" {
  region  = "us-east-1"
  profile = var.profile
}

#Create CW dashboard for EC2 & ALB
module "cw-dashboard" {
  source      = "../../modules/cloudwatch-dashboard"
  instance_id = var.instance_id
}