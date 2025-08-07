# creating ec2
resource "aws_instance" "expense" {
    for_each = var.instance_names
    ami = data.aws_ami.ami_info.id
    instance_type = each.value
    vpc_security_group_ids = [aws_security_group.allow_ssh.id]

    tags = merge(
        var.common_tags,
        {
            Name = each.key
            Module = each.key
        }
    )
}

# creating sg
resource "aws_security_group" "allow_ssh" {
    name = var.sg_name
    description = var.sg_description

    ingress {
        from_port = var.ssh_port
        to_port = var.ssh_port
        protocol = var.protocol
        cidr_blocks = var.cidr
    }

    ingress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = var.cidr
    }

    tags = {
        Name = "allows_ssh"
        CreatedBy = "Avin-Terraform"
    }
}