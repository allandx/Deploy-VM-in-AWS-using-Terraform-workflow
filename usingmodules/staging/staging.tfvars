<<<<<<< HEAD
 ##############
=======
##############
>>>>>>> main
#VPC variables
##############

instance_tenancy = "default"
cidr_block           = "192.168.50.0/24"
enable_dns_hostnames = false
enable_ipv6          = false
#infra_environment = "staging"
vpc_tags = {
  Name = "smu-dms-staging-vpc"
}
tags = {
  Project-code = "smu-dms"
  Agency-code  = "SMU"
  Environment  = "staging"
}
########################
#Public subnet variables
########################

public_subnets          = ["192.168.50.0/26", "192.168.50.64/26"]
map_public_ip_on_launch = false

publicsubnet_tags = {
  Name = "smu-dms-staging-sub-pub"
}

#########################
#Private subnet variables
#########################

private_subnets = "192.168.50.128/26"

privatesubnet_tags = {
  Name = "smu-dms-staging-sub-pri"
}

#################
# natgw variables
#################

enable_nat_gateway = true
connectivity_type  = "private"
natgw_tags = {
  Name = "smu-dms-staging-natgw"
}
