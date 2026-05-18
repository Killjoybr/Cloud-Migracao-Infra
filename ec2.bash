#!/bin/bash
# Atualiza repositorio de pacotes
sudo yum update -y
# Instala o servidor http
sudo yum install -y httpd
# Inicia o servidor
sudo systemctl start httpd
# Habilita a inicialização junto ao sistema
sudo systemctl enable httpd
# Cria uma pagina de teste 
echo "<h1>Servidor Apache na EC2</h1>" > /var/www/html/index.html
