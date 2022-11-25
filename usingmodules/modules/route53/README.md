# Route53 Records

This module creates DNS records in Route53 zone.

Example usage in root module:
```hcl

module "route53" {
  source           = "../../modules/route53"
  hosted_zone_name = var.hosted_zone_name
  zone_id          = var.zone_id
  recordname       = var.recordname
  recordtype       = var.recordtype
  ttl              = var.ttl
  public_ip        = var.public_ip
}

```

To deploy resources,execute 
```terraform apply -var-file=”staging.tfvars”```

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_route53_record](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_record) | resource |
| [aws_route53_zone](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/route53_zone) | data source |

## Inputs

| Name | Description | Type | Default | Required |
| :------| :-------------| :------| :---------|:--------|
| hosted_zone_name| hosted zone name created in r53 | `string` | `null` | yes |
| recordtype | type of record. E.g. AAAA, A, CAA, NAME etc| `string` | `null` | yes |
| recordname | name of record(s) | `set(string)` | `null` | yes |
| public_ip | public ip of ec2 where traffic is routed from route53 | `string` | `null` | yes |
| zone_id| ID of hosted zone | `string` | `null` | no |
| ttl | the ttl of the record | `string` | `null` | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_route53_record_name"></a> [route53\_record\_name](#output\_route53\_record\_name) | The name of the record |
