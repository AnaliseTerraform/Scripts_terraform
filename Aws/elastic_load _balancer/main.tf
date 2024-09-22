resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr_block

  tags = {
    Name = "MyELBVPC"
  }
}

resource "aws_subnet" "main" {
  count = 2
  vpc_id = aws_vpc.main.id
  cidr_block = element(var.subnet_cidr_blocks, count.index)

  tags = {
    Name = "MyELBSubnet-${count.index}"
  }
}

resource "aws_security_group" "elb_sg" {
  vpc_id = aws_vpc.main.id

  ingress {
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
    Name = "MyELBSecurityGroup"
  }
}

resource "aws_elb" "main" {
  name               = "my-elb"
  availability_zones = aws_subnet.main[*].availability_zone
  security_groups    = [aws_security_group.elb_sg.id]

  listener {
    instance_port     = 80
    instance_protocol = "HTTP"
    lb_port           = 80
    lb_protocol       = "HTTP"
  }

  health_check {
    target              = "HTTP:80/"
    interval            = 30
    timeout             = 5
    healthy_threshold  = 2
    unhealthy_threshold = 2
  }

  tags = {
    Name = "MyELB"
  }
}

resource "aws_launch_configuration" "app" {
  name          = "my-launch-configuration"
  image_id     = var.ami_id
  instance_type = var.instance_type
  security_groups = [aws_security_group.elb_sg.id]

  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_autoscaling_group" "app" {
  launch_configuration = aws_launch_configuration.app.id
  min_size            = var.min_size
  max_size            = var.max_size
  desired_capacity    = var.desired_capacity
  vpc_zone_identifier = aws_subnet.main[*].id

  tag {
    key                 = "Name"
    value               = "MyAppInstance"
    propagate_at_launch = true
  }
}
