provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "docker_vms" {
  count         = 10
  ami           = "ami-0c55b159cbfafe1f0" # Amazon Linux 2 AMI
  instance_type = "t2.micro"

  key_name = var.key_name

  tags = {
    Name = "DockerVM-${count.index + 1}"
  }

  provisioner "remote-exec" {
    inline = [
      "sudo yum update -y",
      "sudo yum install -y yum-utils",
      "sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo",
      "sudo yum install -y docker-ce docker-ce-cli containerd.io",
      "sudo usermod -aG docker ec2-user",
      "sudo systemctl enable docker",
      "sudo systemctl start docker"
    ]

    connection {
      type        = "ssh"
      user        = "ec2-user"
      private_key = file(var.private_key_path)
      host        = self.public_ip
    }
  }

  lifecycle {
    create_before_destroy = true
  }
}

output "instance_ips" {
  value = aws_instance.docker_vms[*].public_ip
}
