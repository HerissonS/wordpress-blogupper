#!/bin/bash
# Garantir permissões corretas para o diretório WordPress
echo "Ajustando permissões..."
chown -R www-data:www-data /var/www/html
chmod -R 755 /var/www/html

# Instalar dependências PHP se necessário
echo "Instalando dependências adicionais..."
apt-get install -y php-curl php-gd php-xml php-mbstring
