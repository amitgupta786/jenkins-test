 provider "aws" {
 region = "us-east-1"
}

resource "aws_instance" "app-server1" {
  ami           = "ami-02e136e904f3da870"
  instance_type = "t2.micro"
  key_name = "amit-devops"
  provisioner "local-exec" {
  command = "echo ${aws_instance.app-server1.public_ip} > ./inventory"
  }
  tags = {
    Name = "Amit-server-devops"
    dept = "Engineering"
    env = "Dev"
  }
}
