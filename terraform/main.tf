resource "aws_instance" "centos-instance" {
  ami           = "ami-xxx"
  instance_type = "t2.medium"
  key_name      = "key"
  security_groups = ["${aws_security_group.SG.name}"]

  tags  = {
    Name  = "Centos-EC2"
  }
}

