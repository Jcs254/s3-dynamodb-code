output "vpc_id" {
  value = aws_vpc.splunk-vpc.id
}

output "security_group_id" {
  value = aws_security_group.splunk-sg.id
}

output "ec2_public_ip" {
  value = aws_instance.ec2-demo.public_ip
}