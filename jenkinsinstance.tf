#Jenkins instance
resource "aws_instance" "jenkins_server" {
  ami           = "data.aws_ami.linux.id"
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.jenkins_sg.id]

    tags = {
    Name = "Jenkins Server"
  }

  iam_instance_profile = "${aws_iam_role.jenkins_role.name}"

  user_data = <<EOF
#!/bin/bash
yum update -y
yum install -y java-1.8.0-openjdk
wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
yum install -y jenkins
systemctl start jenkins
systemctl enable jenkins
EOF
}