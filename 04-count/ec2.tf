# creating ec2
resource "aws_instance" "expense" {
    count = length(var.instance_names)
    ami = "ami-09c813fb71547fc4f"
    instance_type = "t2.micro"
    vpc_security_group_ids = [aws_security_group.allow_ssh.id]

    tags = {
        Name = var.instance_names[count.index]
        Module = var.instance_names[count.index]
    }
}


#creating sg
resource "aws_security_group" "allow_ssh" {
    name = "allow_ssh"
    description = "allowing ssh port 22"

    ingress {
        from_port = 22
        to_port   = 22
        protocol  = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
        from_port = 0
        to_port   = 0
        protocol  = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }

    tags = {
        Name = "allows_ssh"
        CreatedBy = "Avinash"
    }
}