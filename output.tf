#Jenkins Security group and instance output
output "instance_public_ip" {
  value = aws_instance.jenkins_server.public_ip
}

output "security_group" {
   value = aws_security_group.jenkins_sg.id
}

