<<<<<<< HEAD
# ##############
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
natgwsubnet = "192.168.50.192/26"
=======
##############
# VPC variables
##############
variable "instance_tenancy" {
  default = "default"
}

variable "cidr_block" {
  default = "192.168.50.0/24"
}


variable "enable_ipv6" {
  default = "false"
}

variable "enable_dns_hostnames" {
  default = "false"
}

variable "tags" {
  type        = map(string)
  default     = {}
  description = "tags to be added for common resources"
}

variable "vpc_tags" {
  type        = map(string)
  default     = {}
  description = "additional tags for the VPC"
}

##########################
# Public subnets variables
##########################

variable "public_subnets" {
  default = ["192.168.50.0/26", "192.168.50.64/26"]
}

variable "map_public_ip_on_launch" {
  default = "false"
}

variable "publicsubnet_tags" {
  description = "The name of the public subnet"
  type        = map(string)
  default     = {}
}

##########################
#Private subnets variables
##########################

variable "private_subnets" {
  default = "192.168.50.128/26"
}

variable "privatesubnet_tags" {
  description = "The name of the private subnet"
  type        = map(string)
  default     = {}
}


#################
# Natgw variables
#################

variable "enable_nat_gateway" {
  default = true
}

variable "connectivity_type" {
  default = "private"

}

variable "natgw_tags" {
  default = {}
}
>>>>>>> main
