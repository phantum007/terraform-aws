provider "aws"{
    region = "eu-west-2"
}

module "ec2module" {
  source = "./ec2"
  ec2Name = "prabhat_ec2"
}

output "module_output" {
  value = module.ec2module.instance_id
}