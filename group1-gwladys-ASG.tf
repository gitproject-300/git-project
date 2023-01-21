resource "aws_autoscaling_group" "ASG" {
  name                 = "Git-test"
  max_size             = 2
  min_size             = 2
  launch_template {
    id      = aws_instance.mywebinstance.id
  }
} 
