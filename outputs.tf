output "instance-id" {
  description = "VM Instance Private IP"
  value       = aws_instance.ec2instance-ni.private_ip
}

output "url" {
  description = "Http URL"
  #value       = join(":", [concat(["http://", tostring(aws_instance.ec2instance-ni.private_ip)]), tostring(var.external_port)])
  value       = join("",["http://", tostring(aws_instance.ec2instance-ni.private_ip), ":" , tostring(var.external_port)])
}