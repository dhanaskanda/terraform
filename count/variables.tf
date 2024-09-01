variable "instance_names" {
    type = list
    default = ["mognodb", "redis", "rabbitmq", "mysql", "catalogue", "cart", "user", "payment", "shippig", "dispatch", "web"]
}


variable   "ami_id" {
    type = string
    default = "ami-0b4f379183e5706b9"
}

variable   "zone_id" {
    type = string
    default = "Z067782025J385S1OCSZM"
}

variable   "instance_domain_name" {
    type = string
    default = "dhanaskanda.online"
}
