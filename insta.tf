resource "aws_instance" "instance1" {
  ami                         = "ami-03ed1381c73a5660e"
  instance_type               = "t2.small"
  count                       = 1
  key_name                    = "krish"
  vpc_security_group_ids     = ["sg-06751d2bc69d6b98b"]
  subnet_id                   = "subnet-09b0644f6da29e605"
  associate_public_ip_address = true
  user_data                   = "${file("data.sh")}"

  tags = {
    Name = "instance1"
  }
}
