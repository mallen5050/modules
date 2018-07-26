resource "aws_security_group" "Domain-Controllers" {
    name        = "Domain-Controllers"
    description = "Domain-Controllers"
    vpc_id      = "${var.vpc_id}""

    ingress {
        from_port       = -1
        to_port         = -1
        protocol        = "icmp"
        cidr_blocks     = ["172.20.100.20/32", "10.20.10.244/32", "172.30.100.20/32", "172.16.21.141/32", "172.30.21.141/32", "172.16.41.10/32", "172.16.41.20/32", "172.30.41.10/32", "172.18.10.10/32", "10.10.1.250/32", "10.10.1.251/32", "10.10.1.96/32", "172.20.99.55/32", "172.30.99.55/32"]
    }


    egress {
        from_port       = 0
        to_port         = 0
        protocol        = "-1"
        cidr_blocks     = ["0.0.0.0/0"]
    }

    tags {
        "Name" = "POM-prod-us-east-2-POM-Domain-Controllers"
    }
}

variable "vpc_id" {}