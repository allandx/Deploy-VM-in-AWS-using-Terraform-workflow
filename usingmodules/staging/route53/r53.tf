module "route53" {
  source           = "../../modules/route53"
  hosted_zone_name = var.hosted_zone_name
  zone_id          = var.zone_id
  recordname       = var.recordname
  recordtype       = var.recordtype
  ttl              = var.ttl
  public_ip        = var.public_ip
}

