#create nat gateway
resource "aws_nat_gateway" "NATGW-pri" {
  connectivity_type = "private"
  subnet_id = var.subnet_id
  tags = {
    Name         = "smu-dms-qa-NATGW"
    Project-code = "smu-dms"
    Environment  = "QA"
  }
}
