resource "aws_instance" "example" {
  ami           = "ami-0f8ca728008ff5af4"
  instance_type = "t2.micro"
  tags = {
    Name = "terraform-example"
  }
}
