# Cloud-Migracao-Infra
Modelagem de migração de infraestrutura on prem para cloud AWS

## Checklist de Infraestrutura AWS - Empresa X

### 1. Rede e Roteamento (VPC)
- [X] Criar VPC com o bloco CIDR `10.0.0.0/16`.
- [X] Criar Subrede Pública 1: `10.0.1.0/24` (Zona A).
- [X] Criar Subrede Pública 2: `10.0.2.0/24` (Zona B).
- [X] Criar Subrede Privada 1: `10.0.3.0/24` (Zona A).
- [X] Criar Subrede Privada 2: `10.0.4.0/24` (Zona B).
- [X] Criar e anexar um Internet Gateway à VPC.
- [X] Criar um NAT Gateway na Subrede Pública 1 (`10.0.1.0/24`).
- [X] Configurar a tabela de roteamento das subredes públicas para direcionar o tráfego para o Internet Gateway.
- [X] Configurar a tabela de roteamento das subredes privadas para direcionar o tráfego para o NAT Gateway.

### 2. Grupos de Segurança (Security Groups)
- [X] Criar Grupo de Segurança para instâncias EC2 (Permitir entrada HTTP, HTTPS e SSH).
- [X] Criar Grupo de Segurança para o banco de dados RDS (Permitir tráfego apenas das instâncias EC2).

### 3. Computação e Armazenamento (EC2 e EBS)
- [X] Lançar instâncias EC2 nas subredes públicas para atuar como servidores web e de aplicação.
- [X] Anexar volumes EBS às instâncias EC2 para armazenamento persistente.
- [X] Configurar código na aplicação web para salvar um arquivo JSON de cada pedido no bucket S3.

### 4. Banco de Dados (RDS)
- [X] Criar um banco de dados relacional nas subredes privadas.
- [X] Configurar conexão com endpoint ec2 e certificado ssl AWS.
- [X] Criar tabela usuarios.
- [X] Criar tabela produtos.
- [X] Criar tabela pedidos.

### 5. Serviços Serverless (S3 e Lambda)
- [X] Criar um bucket S3 com o nome `pedido-novo`.
- [X] Criar função AWS Lambda para leitura de arquivo no S3 e envio de e-mail.
- [X] Configurar gatilho (Trigger) no bucket S3 para acionar a função Lambda com o evento de "Todos os eventos de criação de objeto".

### 6. Entregáveis Finais do Projeto
- [X] Diagrama de arquitetura evidenciando os componentes e interconexões (sugestão: Draw.io).
- [X] Capturas de tela comprovando as configurações feitas no console da AWS.
- [X] Relatório documentando a configuração das instâncias EC2 (hospedagem web e lógica de negócios).
- [X] Documentação com as etapas, justificativas e implementação das funções Lambda integradas aos serviços.
