output "ec2_public_dns" {
  value = aws_instance.windows_client.0.public_dns
}

output "ec2_public_ip" {
  value = aws_eip.eip_pub.0.public_ip
}