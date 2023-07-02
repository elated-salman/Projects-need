#creating database security group
resource "aws_security_group" "database_sg" {
    vpc_id = aws_vpc.vpc_deepu.id

    ingress  {
        description = "allow inboud traffic from application layer"
        from_port = 3306
        to_port = 3306
        protocol = "tcp"
        security_groups = [aws_security_group.wsg.id]

    }
    egress {
        from_port = 32768
        to_port = 65535
        protocol = "tcp"
        cidr_blocks = [ "0.0.0.0/0" ]
    }
    
    tags = {
      Name = "database_sg"
    }

  
}