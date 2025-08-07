resource "aws_instance" "testing" {
    ami = "ami-09c813fb71547fc4f"
    instance_type = "t2.micro"
    vpc_security_group_ids = ["sg-023ff420fac1e729a"]

    tags = {
        Name = "testing"
        Terraform = true
    }
}