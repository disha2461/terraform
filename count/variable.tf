variable "ami_id"{
    type = string
    default = "ami-0f3c7d07486cad139" 
}

variable "instance_names"{
    type = list
    default = ["Mongodb", "cart", "catalogue", "user", "redis", "mysql", "shipping", "payment", "web", "rabbitmq"]
}