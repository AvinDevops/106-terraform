#creating ec2
resource "aws_instance" "db" {
    ami = var.ami_id
    instance_type = var.instance_name == "db" ? "t3.micro" : "t2.micro" 
    vpc_security_group_ids = ["sg-023ff420fac1e729a"]
}