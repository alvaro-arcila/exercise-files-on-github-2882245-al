data "aws_ami" "app_ami"{
  most_recent = true
  filter {
    name = "name"
    values = ["al2023-ami-2023.*-x86_64"]
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
