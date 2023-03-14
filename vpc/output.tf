output "vpc_id" {
  value = aws_vpc.default.id
}

output "internet_gateway_id" {
  value = aws_internet_gateway.default.id
}

output "sg_public"{
  value = aws_security_group.sg_public.id
}

output "public_subnet" {
  value = aws_subnet.public.0.id
}

output "sg_private" {
  value = aws_security_group.sg_private.id
}

output "private_subnet" {
  value = aws_subnet.private.0.id
}
