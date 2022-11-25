variable "vpc_id" {
  description = "value pass from vpc module output"
  type = string
  default = ""

}

variable "public_subnets" {
  description = "The cidr range of public subnet inside the VPC"
  type        = string
  default     = "190.150.0.0/25"

}

variable "private_subnets" {
  description = "The cidr range of private subnet inside the VPC"
  type    = string
  default = "190.150.0.128/25"
}


variable "map_public_ip_on_launch" {
  description = "Should be false if you do not want to auto-assign public IP on launch"
  type        = bool
  default     = false
}

variable "publicsubnet_tags" {
  description = "The name of the public subnet"
  type        = map(string)
  default     = {}
}

variable "privatesubnet_tags" {
  description = "The name of the private subnet"
  type        = map(string)
  default     = {}
}

variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default     = {}
}

