# Variáveis
variable "vm_name_prefix" {
  default = "docker-vm"
}

variable "vm_count" {
  default = 10
}

# Recursos
resource "google_compute_instance" "docker_vm" {
  # Adicionar a configuração da AWS
  count = var.vm_count
  name = "${var.vm_name_prefix}-${count.index + 1}"

  # ... outras configurações (ex: rede, disco)
}
