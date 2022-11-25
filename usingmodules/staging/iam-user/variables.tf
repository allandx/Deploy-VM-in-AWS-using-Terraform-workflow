variable "profile" {
  description = "Cloudcover AWS devops account"
  type        = string
  default     = "895307684105_DevOpsAccount"
}


#########################################
# IAM user variables
#########################################
variable "force_destroy" {
  type    = bool
  default = true
}

variable "create_iam_access_key" {
  description = "Whether to create IAM access key"
  type        = bool
  default     = true
}

variable "username" {
  type    = list(string)
  default = []
}
variable "tags" {
  type        = map(string)
  default     = {}
  description = "tags to be added for common resources"
}

variable "iamuser_tags" {
  type        = map(string)
  default     = {}
  description = "additional resource tag for iam user"
}
#########################################
# IAM policy variables
#########################################
variable "policy-ec2full_tags" {
  description = "name of the custom policy"
  type        = map(string)
  default     = {}
}

#########################################
# IAM role variables
#########################################
variable "trusted_role_arns" {
  description = "ARNs of AWS entities who can assume these roles"
  type        = list(string)
  default     = []
}

variable "trusted_role_services" {
  description = "AWS Services that can assume these roles"
  type        = list(string)
  default     = []
}

variable "mfa_age" {
  description = "Max age of valid MFA (in seconds) for roles which require MFA"
  type        = number
  default     = 86400
}

# Admin
variable "create_admin_role" {
  description = "Whether to create admin role"
  type        = bool
  default     = false
}

variable "admin_role_name" {
  description = "IAM role with admin access"
  type        = string
  default     = "admin"
}

variable "admin_role_path" {
  description = "Path of admin IAM role"
  type        = string
  default     = "/"
}
variable "admin_role_requires_mfa" {
  description = "Whether admin role requires MFA"
  type        = bool
  default     = true
}

variable "admin_role_policy_arns" {
  description = "List of policy ARNs to use for admin role"
  type        = list(string)
  default     = ["arn:aws:iam::aws:policy/AdministratorAccess"]
}

variable "admin_role_permissions_boundary_arn" {
  description = "Permissions boundary ARN to use for admin role"
  type        = string
  default     = ""
}

variable "force_detach_policies" {
  description = "Whether policies should be detached from this role when destroying"
  type        = bool
  default     = false
}
