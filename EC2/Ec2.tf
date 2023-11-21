provider "aws"{
    region = "eu-west-2"
}

resource "aws_instance" "aws_instance_prabhat" {
    ami = "ami-0cfd0973db26b893b"
    instance_type = "t2.micro"
  
}
resource "aws_eip" "prabhat_ec2_eip" {
  instance = aws_instance.aws_instance_prabhat.id
}
output "EIP" {
  value = aws_eip.prabhat_ec2_eip.public_ip
}