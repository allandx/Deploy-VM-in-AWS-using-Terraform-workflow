## Project overview
| Client        | Project Name  |
| ------------- | ------------- |
| SMU           | DMS           |

## Business Problem Statement

SMU is looking at a Data Management Solution in order 
to set up an end-to-end data pipeline to: 

1. Ingest data from their various data sources both on premises (SAP,PeopleSoft, etc) and on the cloud (Oracle CRM, Qilk Sense Cloud, etc)
2. Transform the data (currently data are loaded from source to Qilk Sense Cloud and ETL is done using Qlik Sense)
3. ML (Currently test mining is performed on the response to open-ended question in the survey)
4. Visualise the data (Qlik Sense Cloud)
5. Data Management- (frozen data set, live data set)
6. Data Governance- (PDPA - delete user data, Retention Policy)
7. There will be two environments (QA and Production) 

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



