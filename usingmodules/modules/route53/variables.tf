variable "region" {
  description = "region where infrastructure is created"
  default     = "us-east-1"
  type        = string
}

variable "profile" {
  description = "Cloudcover AWS devops account"
  type        = string
  default     = "895307684105_DevOpsAccount"
}

variable "hosted_zone_name" {
  description = "hosted zone name created in r53"
  type        = string
  default     = "ac-godmode2.com"
}
variable "zone_id" {
  description = "zone id of hosted zone"
}
variable "public_ip" {
  description = "public ip of ec2 where traffic is routed from here to route 53"
  default     = "34.228.36.55"
}

variable "ttl" {
  description = "ttl set to 300"
  default     = "300"

}
variable "recordtype" {
  description = "type of record. E.g. AAAA, A, CAA, NAME etc"
  type        = string
  default     = "A"
}

variable "recordname" {
  description = "name of records created"
  type        = set(string)
  default = [
    "allanroute53",
    "allanroute53-2"
  ]
}
