# creating ec2 instance
resource "aws_instance" "db" {
    ami = "ami-09c813fb71547fc4f"
    instance_type = "t2.micro"
    vpc_security_group_ids = [aws_security_group.allow_ssh.id]

    tags = {
        Name = "db"
    }
}

# creating sg
resource "aws_security_group" "allow_ssh" {
    name = "allow_ssh"
    description = "allowing ssh"

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

