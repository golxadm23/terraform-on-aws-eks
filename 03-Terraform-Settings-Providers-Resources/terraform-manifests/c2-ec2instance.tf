# Resource: EC2 Instance
resource "aws_instance" "myec2vm" {
  ami           = "ami-05548f9cecf47b442"
  instance_type = "t2.micro"
  user_data     = file("${path.module}/app1-install.sh")
  tags = {
    "Name" = "EC2 Demo"
  }
}