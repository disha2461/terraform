resource "aws_instance" "conditions"{
    count = 10
    ami = var.ami_id
    instance_type = var.instance_names[count.index] == "Mongodb" || var.instance_names[count.index] == "mysql" ? "t3.medium" : "t2.micro"

    tags = {
        Name = var.instance_names[count.index]
    }
}

# MongoDB, cart,catalogue,user,redis,mysql,rabbitmq,shipping,payment,web