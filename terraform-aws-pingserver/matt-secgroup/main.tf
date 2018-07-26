resource "aws_security_group" "MATT-TEMPORARY-JUMP-PORTAL-----REMOVE" {
    name        = "MATT TEMPORARY JUMP PORTAL---- REMOVE"
    description = "MATT TEMPORARY JUMP PORTAL---- REMOVE"
    vpc_id      = "${var.vpc_id}""

    ingress {
        from_port       = 0
        to_port         = 0
        protocol        = "-1"
        cidr_blocks     = ["10.20.10.67/32"]
    }


    egress {
        from_port       = 0
        to_port         = 0
        protocol        = "-1"
        cidr_blocks     = ["0.0.0.0/0"]
    }

    tags {
        "Name" = "MATT TEMP"
    }
}

variable "vpc_id" {}