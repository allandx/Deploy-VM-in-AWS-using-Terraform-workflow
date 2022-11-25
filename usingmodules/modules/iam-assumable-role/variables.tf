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

variable "admin_role_tags" {
  description = "A map of tags to add to admin role resource."
  type        = map(string)
  default     = {}
}

variable "force_detach_policies" {
  description = "Whether policies should be detached from this role when destroying"
  type        = bool
  default     = false
}