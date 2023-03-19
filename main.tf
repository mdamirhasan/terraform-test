resource "aws_instance" "Example" {
  ami           =  "ami-08795883c7b4b7140" 
  instance_type = "t2.micro"
}
