locals {
    ami_id = "ami-09c813fb71547fc4f"
    instance_type = var.instance_names == "db" ? "t2.small" : "t2.micro"
    sg_id = "sg-023ff420fac1e729a"

    tags = {
        Name = "locals"
    }
}
