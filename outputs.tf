output "PrivateIP" {
  description = "VM Private IP"
  value       = aws_instance.my-instance.private_ip
}

/*

output "instance-id" {
  description = "VM Instance Public IP"
  value       = aws_instance.ec2instance-ni.public_ip
}

output "url" {
  description = "Http URL"
  #value       = join(":", [concat(["http://", tostring(aws_instance.ec2instance-ni.private_ip)]), tostring(var.external_port)])
  value       = join("",["http://", tostring(aws_instance.ec2instance-ni.private_ip), ":" , tostring(var.external_port)])
}
*/