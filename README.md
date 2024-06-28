Este playbook Ansible oferece uma alternativa para executar manualmente os passos descritos em nosso guia sobre Como Instalar e Usar o Docker no Ubuntu 20.04. Configure o playbook uma vez e use-o para cada instalação posterior.

Ao executar este playbook, ele realizará as seguintes ações nos seus hosts Ansible:

Instalar o aptitude, que é preferido pelo Ansible como uma alternativa ao gerenciador de pacotes apt.
Instalar os pacotes do sistema necessários.
Instalar a chave GPG do Docker.
Adicionar o repositório oficial do Docker às fontes do apt.
Instalar o Docker.
Instalar o módulo Python Docker via pip.
Baixar a imagem padrão especificada por default_container_image do Docker Hub.
Criar o número de containers definido pela variável container_count, cada um usando a imagem definida por default_container_image, e executar o comando definido em default_container_command em cada novo container.