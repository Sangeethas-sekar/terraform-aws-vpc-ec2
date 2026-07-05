#Output File
output "vpc_id" {
  value = aws_vpc.main.id
}
output "vpc_cidr" {
  value = aws_vpc.main.cidr_block
}
output "vpc_arn" {
  value = aws_vpc.main.arn
}
output "subnet_id" {
  value = aws_subnet.subnet.id
}
output "subnet_cidr" {
  value = aws_subnet.subnet.cidr_block
}
output "instance_id" {
  value = aws_instance.ec2.id
}
output "instance_public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.ec2.public_ip
}
output "instance_public_dns" {
  description = "Public DNS of the EC2 instance"
  value       = aws_instance.ec2.public_dns
}
