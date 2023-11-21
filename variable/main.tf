provider "aws"{
    region = "eu-west-2"
}


variable "vpcname" {
  type = string
  default = "myvpc"
}

variable "sshport" {
  type = number
  default = 22
}

variable "enabled" {
  default = true
}

variable "mylist" {
  type=list(string)
  default = [ "value1","value2" ]
}

variable "mymap" {
  type = map
  default = {
    key1 = "value1"
    key2 = "value2"
  }
}

variable "inputname" {
  type = string
  description = "enter the value for inputname"
}


resource "aws_vpc" "my_aws_vpc_name" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = var.inputname
  }
}

output "vpc_id" {
  value = aws_vpc.my_aws_vpc_name.id
}

variable "mytuple" {
  type = tuple([ string,number,string ])
  default = [ "cat", 1, "dog" ]
}

variable "myobject" {
  type = object({
    name = string,
    port = list(number)
  })
  default = {
    name = "prabhat",port = [ 22,25,80 ]
  }
}