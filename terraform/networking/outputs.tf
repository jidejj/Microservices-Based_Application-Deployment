output "vpc_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.my_vpc.id
}

output "subnet_ids" {
  description = "A list of subnet IDs"
  value       = aws_subnet.my_subnet[*].id
}
