variable "ami_id" {
    type = string
    default = "ami-09c813fb71547fc4f"
}

variable "instance_type" {
    type = string
    default = "t2.micro"
}

variable "tags" {
    type = map
    default = {
        Project = "Expense"
        Environment = "Dev"
        Module = "DB"
        Name = "DB"
    }
}

variable "sg_name" {
    type = string
    default = "allow_ssh"
}

variable "description" {
    type = string
    default = "allowing ssh 22 port"
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