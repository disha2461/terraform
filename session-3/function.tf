resource "aws_key_pair" "deployer" {
    key_name = "devops-pub"
    public_key = file("${path.module}/devops.pub")
}

resource "aws_instance" "ec2"{
    ami = var.ami_id
    instance_type = "t2.micro"
}