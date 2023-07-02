# creating VPC
resource "aws_vpc" "myvpc" {
  cidr_block       = "10.0.0.0/25"
  instance_tenancy = "default"

  tags = {
    Name = "myvpc"
  }


}