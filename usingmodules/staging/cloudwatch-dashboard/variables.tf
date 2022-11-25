variable "profile" {
  description = "Cloudcover AWS devops account"
  type        = string
  default     = "895307684105_DevOpsAccount"
}

variable "instance_id" {
  description = "instance id used in dashboard_body"
  type        = list(string)
  default     = ["i-0071e4001363efb50", "i-092262cd2c60ec24d", "i-0be44c59779d2417d"]
}