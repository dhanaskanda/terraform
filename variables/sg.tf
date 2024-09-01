resource "aws_security_group" "roboshop-all" { # This is terraform name, for terraform reference only
    name        = var.sg-name
    description = var.sg-description
    #vpc_id      = aws_vpc.main.id

    ingress {
        description      = "All all ports"
        from_port        = var.inbound-from_port
        to_port          = 0
        protocol         = "tcp"
        cidr_blocks      = var.cidr-blocks
        #ipv6_cidr_blocks = ["::/0"]
    }
    egress {
        from_port        = 0
        to_port          = 0 # 0 means all ports
        protocol         = "-1"
        cidr_blocks      = ["0.0.0.0/0"]
        #ipv6_cidr_blocks = ["::/0"]
    }
    tags = {
        Name = "roboshop-all"
    }
}