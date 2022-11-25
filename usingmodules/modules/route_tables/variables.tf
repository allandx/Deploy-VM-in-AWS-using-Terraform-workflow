variable "vpc_id" {
  description = "ID of the vpc to be associated with"
  type        = string
  default     = ""
}

variable "igw_id" {
  description = "ID of the internet gateway to be associated with"
  type        = string
  default     = ""
}

variable "ngw_id" {
    description = "ID of the NAT gateway to be associated with"
    type = string
    default = ""
  
}

variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  #default     = {}
}

variable "public_rt_tags" {
  description = "The name of the public route tables"
  type = map(string)
  default = {}
}

variable "private_rt_tags" {
    description = "The name of the private route tables"
    type = map(string)
    default = {}
  
}

variable "publicsubnet_id" {
    description = "The public subnet to be associated to the public route table"
    type = string
    default = ""
  
}

variable "privatesubnet_id" {
    description = "The private subnet to be associated to the private route table"
    type = string
    default = ""
  
}
