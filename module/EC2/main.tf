
resource "aws_instance" "myec2" {
  ami           = var.var_ami_id
  instance_type = var.var_instance_type
  subnet_id     = var.private_app_subnet_ids[0]

  vpc_security_group_ids = [aws_security_group.ec2_sg.id]

  user_data = <<-EOF
#!/bin/bash
exec > /var/log/user-data.log 2>&1
set -x

dnf update -y
dnf install -y httpd

systemctl enable httpd
systemctl start httpd

echo "<h1>Hello from Terraform EC2</h1>" > /var/www/html/index.html

systemctl restart httpd
EOF

  tags = {
    Name = "main-EC2"
  }
}


resource "aws_security_group" "ec2_sg" {
  name   = "ec2-security-group"
  vpc_id = var.vpc_id

  ingress {
    description = "SSH Access"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "HTTP Access"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "ec2-security-group"
  }
}

