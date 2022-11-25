variable "dashboard_name" {
  description = "name of dashboard"
  type        = string
  default     = "ac-dashboard-ec2-alb"

}

variable "instance_id" {
  description = "instance id to set in dashboard body in JSON"
  type        = list(string)
  default     = ["i-0071e4001363efb50", "i-092262cd2c60ec24d", "i-0be44c59779d2417d"]

}