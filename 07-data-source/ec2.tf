resource "aws_instance" "practice" {
    ami = data.aws_ami.ami_info.id
    instance_type = "t2.micro"
    vpc_security_group_ids = ["sg-023ff420fac1e729a"]

    tags = {
        Name = "practice"
        Terraform = true
    }
}