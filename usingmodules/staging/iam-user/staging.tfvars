#To create additional iam users with EC2 full access
username = ["smu-admin-1", "smu-admin-2"]

#Intra_environment = "staging"
iamuser_tags = {
  Name = "smu-dms-stage-iamuser"
}

policy-ec2full_tags = {
  Name = "smu-stage-ec2fullaccess"
}

tags = {
  Project-code = "smu-dms"
  Agency-code  = "SMU"
  Environment  = "staging"
}

#To create full-admin role for devops
#To test using a console-created empty user
trusted_role_arns = [
  "arn:aws:iam::895307684105:user/smu-test-user-role",
]
create_admin_role = true
#create_instance_profile = true
admin_role_name         = "smu_devops_admin"
force_detach_policies   = false
