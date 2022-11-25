This project explores the usage of child and parent module using .tfvars.


## To test resources created using modules with Terraform workflow

Please consider the following:
1. State the provider block in main.tf
2. Include cloud credentials by declaring an input variable in provider block
3. State the child module’s source in local Path
4. Run the Terraform workflow - Write, Init, Plan, Apply, and Destroy(after testing)

Sample code block for "VPC module"

```
provider "aws" {
  region  = "ap-southeast-1"
  profile = var.profile
}

module "vpc" {
  source = "../modules/vpc"
  vpc_id = module.vpc.vpc_id
  
}
```



