output "instance-id" {
  description = "VM Instance Private IP"
  value = aws_instance.ec2instance-ni.private_ip
}