# ec2 variables
variable "instance_names" {
    type = map
    default = {
        db = "t2.small"
        backend = "t2.micro"
        frontend = "t2.micro"
    }
}
 variable "common_tags" {
    type = map
    default = {
        Project = "Expense"
        Environment = "Dev"
        Terraform = true
    }
 }

#sg variables
variable "sg_name" {
    type = string
    default = "allow_ssh"
}

variable "sg_description" {
    type = string
    default = "allowing ssh port 22"
}

variable "ssh_port" {
    type = number
    default = 22
}

variable "protocol" {
    type = string
    default = "tcp"
}

variable "cidr" {
    type = list(string)
    default = ["0.0.0.0/0"]
}

#r53 variables
variable "zone_id" {
    type = string
    default = "aaaa"
}

variable "domain_name" {
    type = string
    default = "avinexpense.com"
}