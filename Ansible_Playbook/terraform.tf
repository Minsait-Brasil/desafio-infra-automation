# Configure o provedor AWS teste
provider "aws" {
  region = "us-east-1"  # Substitua pela sua região
}

# Variáveis para personalização
variable "ami" {
  description = "AMI do Amazon Linux 2 para EC2"
  type        = string
  default     = "ami-0c55b159cbfafe1f0"  # Exemplo para us-east-1
}

variable "instance_type" {
  description = "Tipo de instância EC2"
  type        = string
  default     = "t2.micro"
}

# Recurso para criar as instâncias
resource "aws_instance" "example" {
  count = 10

  ami           = var.ami
  instance_type = var.instance_type

  tags = {
    Name = "docker-vm-${count}"
  }

  # Configurar o grupo de segurança para permitir o tráfego SSH e Docker
  vpc_security_group_ids = [aws_security_group.allow_ssh_and_docker.id]
}

# Recurso para criar um grupo de segurança
resource "aws_security_group" "allow_ssh_and_docker" {
  name        = "allow_ssh_and_docker"
  description = "Permite SSH e tráfego Docker"
  vpc_id      = data.aws_vpc.default.id

  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description   
 = "Docker"
    from_port   
   = 2375
    to_port     = 2375
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
