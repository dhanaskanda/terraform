# 1. Command line
# 2. variable file -var-file
# 3. terraform.tfvars
# 4. Environment
# 5. If terraform don't find the variable on any one of the 4 above then it will prompt for variable

variable   "ami_id" {
    type = string
    default = "ami-0b4f379183e5706b9"
}

variable "instance_type" {
    type = string
    default = "t2.micro"
}

variable "tags" {
    type = map
    default = {
        Name = "Hello Terraform"
        Project = "Roboshop"
        Environment = "Dev"
        Component = "Web"
        Terraform = "true"
    }
}

variable "sg-name" {
    type = string
    default = "roboshop-all"
}

variable  "sg-description" {
    type = string
    default = "Allow TLS inbound traffic and all outbound traffic"
}

variable  "inbound-from_port" {
    type = number
    default = 0
}

variable "cidr-blocks" {
    type = list
    default = ["0.0.0.0/0"]
}