resource "aws_instance" "example" {
  ami                    = "ami-0f8ca728008ff5af4"
  instance_type          = "t2.micro"
  vpc_security_group_ids = [aws_security_group.instance.id]
  user_data = <<-EOF
              #!/bin/bash
              echo "Hello, World" > index.html
              nohup busybox httpd -f -p 8080 &
              EOF
  
  user_data_replace_on_change = true
 
  tags = {
    Name = "terraform-example"
  }
}
 
output "public_ip" {
  value       = aws_instance.example.public_ip
  description = "The public IP address of the web server"
}
