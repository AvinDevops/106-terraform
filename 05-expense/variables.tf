# ec2 variables
variable "ami_id" {
    type = string
    default = "ami-09c813fb71547fc4f"
}

variable "instance_names" {
    type = list
    default = ["db","backend","frontend"]
}

variable "common_tags" {
    type = map
    default = {
        Project = "Expense"
        Environment = "Dev"
        Terraform = true
    }
}

# sg variables
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
    default = "asaad123rw"
}

variable "domain_name" {
    type = string
    default = "avinexpense.online"
}