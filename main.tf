data "aws_ami" "app_ami"{
  most_recent = true
  filter {
    name = "name"
    values = ["bitnami-tomcat-*-x86_64-hvm-ebs-nami"]
  }
  owners = ["979382823631"]
}

resource "aws_instance" "web" {
  ami = data.aws_ami.app_ami.id
  instance_type ="t3.micro"

  tags= {
    name = "Learning Terraform"
  }
}
