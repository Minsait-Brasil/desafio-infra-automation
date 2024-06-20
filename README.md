## Objetivo
O objetivo deste desafio é avaliar suas habilidades em Rundeck e Ansible. Você precisará converter um job complexo do Rundeck, que interage com diversas máquinas Linux para instalar e configurar Docker, em um playbook Ansible. 

## Instruções

### Parte 1: Rundeck para Ansible
1. Dentro do diretório `Rundeck_Job/` você encontrará um arquivo `job.yaml` que descreve um job Rundeck. Este job realiza as seguintes tarefas:
   - Conecta-se a várias máquinas Linux.
   - Instala o Docker.
   - Configura o Docker conforme necessário.
   
2. Sua tarefa é converter este job Rundeck em um playbook Ansible que realiza as mesmas ações. O playbook deve estar localizado no diretório `Ansible_Playbook/` com o nome `playbook.yaml`.
   
* Certifique-se de que as máquinas provisionadas estejam acessíveis para o Ansible executar o playbook.

## Critérios de Avaliação
Seu trabalho será avaliado com base nos seguintes critérios:
- **Funcionalidade**: O playbook Ansible deve executar todas as tarefas especificadas no job Rundeck original.
- **Organização e Clareza**: O código deve ser bem organizado e fácil de entender.
- **Uso de Boas Práticas**: Devem ser seguidas as melhores práticas para Ansible. 
- **Documentação**: Forneça uma documentação clara no README.md explicando como executar o playbook e provisionar a infraestrutura.

## Submissão
1. Faça um fork deste repositório.
2. Complete o desafio.
3. Submeta um pull request com suas alterações.

## Notas Adicionais
- Certifique-se de que todas as dependências necessárias estejam documentadas.
- Inclua quaisquer suposições que você tenha feito ao completar o desafio.

Boa sorte!
