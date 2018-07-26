resource "aws_instance" "PING-SERVER" {
    ami                         = "${var.ami_id}"
    availability_zone           = "${var.availability_zone}"
    ebs_optimized               = false
    instance_type               = "t2.micro"
    monitoring                  = false
    key_name                    = "${var.key_name}"
    subnet_id                   = "${var.subnet-id}"
    vpc_security_group_ids      = "${var.vpc_security_group_ids}"
    associate_public_ip_address = false
    private_ip                  = "${private_ip}"
    source_dest_check           = true

    root_block_device {
        volume_type           = "gp2"
        volume_size           = 50
        delete_on_termination = true
    }

    tags {
        "Name" = "PING-SERVER"
    }
}
  variable "ami_id" {}
  variable "availability_zone" {}
  variable "key_name" {}
  variable "subnet-id" {}
  variable "vpc_security_group_ids" {}
  variable "private_ip" {}