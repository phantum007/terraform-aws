variable "ec2Name" {
  type = string
}


resource "aws_instance" "aws_instance_prabhat" {
    ami = "ami-0cfd0973db26b893b"
    instance_type = "t2.micro"
    tags = {
        name=var.ec2Name
    }
}

output "instance_id" {
  value = aws_instance.aws_instance_prabhat.id
}