provider "aws" {
  region  = var.region
  profile = var.profile
}
resource "aws_route53_zone" "main" {
  name = var.hosted_zone_name
}
resource "aws_route53_record" "this" {
  zone_id = aws_route53_zone.main.zone_id
  for_each = var.recordname
  name     = each.value
  type    = var.recordtype
  ttl     = var.ttl
  records = [var.public_ip]
}
