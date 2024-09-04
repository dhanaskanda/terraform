output aws_id {
  value       = data.aws_ami.centos8.id
}

output aws_vpc {
  value       = data.aws_vpc.default
}
