variable "username" {
  type    = list(string)
}

variable "region" {
  default = "ap-southeast-1"
}

variable "force_destroy" {
  description = "When destroying this user, destroy even if it has non-Terraform-managed IAM access keys, login profile or MFA devices. Without force_destroy a user with non-Terraform-managed access keys and login profile will fail to be destroyed."
  type        = bool
}

variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
}

variable "iamuser_tags" {
  description = "name of the iam-user"
  type        = map(string)

}

variable "policy-ec2full_tags" {
  description = "describes the policy"
  type        = map(string)
  default     = {}
}