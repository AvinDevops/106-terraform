# creating ec2
resource "aws_instance" "expense" {
    count = length(var.instance_names)
    ami = var.ami_id
    instance_type = var.instance_names[count.index] == "db" ? "t2.small" : "t2.micro"
    vpc_security_group_ids = [aws_security_group.allow_ssh.id]

    tags = merge(
        var.common_tags,
        {
            Name = var.instance_names[count.index]
            Module = var.instance_names[count.index]
        }
    )
}

#creating sg
resource "aws_security_group" "allow_ssh" {
    name = var.sg_name
    description = var.sg_description

    ingress {
        from_port = var.ssh_port
        to_port   = var.ssh_port
        protocol  = var.protocol
        cidr_blocks = var.cidr
    }

    egress {
        from_port = 0
        to_port   = 0
        protocol  = "-1"
        cidr_blocks = var.cidr
    }

    tags = {
        Name = "allows_ssh"
        CreatedBy = "Avinash-Terraform"
    }
}