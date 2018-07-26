resource "aws_instance" "POM-prod-us-east-2-TEST-SERVER" {
    ami                         = "ami-3e07395b"
    availability_zone           = "us-east-2a"
    ebs_optimized               = false
    instance_type               = "t2.micro"
    monitoring                  = false
    key_name                    = "POM-prod-us-east-2-kp"
    subnet_id                   = "subnet-e9218681"
    vpc_security_group_ids      = ["sg-3b70f151", "sg-9c9f5df7", "sg-37b93e5d"]
    associate_public_ip_address = false
    private_ip                  = "172.25.13.225"
    source_dest_check           = true

    root_block_device {
        volume_type           = "gp2"
        volume_size           = 50
        delete_on_termination = true
    }

    tags {
        "Name" = "POM-prod-us-east-2-TEST-SERVER"
    }
}