variable "hosted_zone_name" {
  description = "hosted zone name created in r53"
  type        = string
  default     = ""
}

variable "zone_id" {
  description = "zone id of hosted zone"
  type        = string
  default     = ""

}
#comment recordname out to test list(map(string))
/*variable "recordname" {
  description = "name of record"
  default     = ""
}
*/
# To test using map(string) to input values to multiple recordnames
/*
variable "recordname" {
  description = "name of record(s) created"
  type        = map(string)
  default = {}
}
*/
variable "recordname" {
  description = "name of record(s) created"
  type        = set(string)
  default     = []
}
variable "recordname_usecount" {
  description = "name of records created"
  type        = list(string)
  default     = []
}
variable "recordtype" {
  description = "type of record. E.g. AAAA, A, CAA, NAME etc"
  default     = ""

}

variable "public_ip" {
  description = "public ip of ec2 where traffic is routed from here to route 53"
  default     = []

}

variable "ttl" {
  description = "ttl set to 300"
  default     = ""
}