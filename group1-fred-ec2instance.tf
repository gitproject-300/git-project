 resource "aws_instance" "mywebinstance" {
  ami  = "ami-0b5eea76982371e91"
  instance_type = "t2.micro"
vpc_security_group_ids = [aws_security_group.SG.id]
  user_data = <<EOF
#!/bin/bash
Sudo su
yum update -y
yum install httpd -y
systemctl start htpd
systemctl enable httpd
echo "<<html>
<head> <title> </title> </head>
<body bgcolor=blue>
<h1> "This is my web server for GitHub" </h1>
</body>
</html> " >> /var/www/html/index.html
EOF

Tags {
    name = "instance-gp1"
}
}
