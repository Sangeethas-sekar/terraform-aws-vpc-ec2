#Instance File
resource "aws_instance" "ec2" {
  ami                    = data.aws_ami.ubuntu.id
  instance_type          = "t3.micro"
  subnet_id              = aws_subnet.subnet.id
  vpc_security_group_ids = [aws_security_group.sg.id]
  key_name               = "terra-key"
  user_data              = file("${path.module}/scripts/userdata.sh")
  tags = {
    Name = "Web-Server"
  }
}
