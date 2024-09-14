#!/bin/bash
# Teste 2 Garantir permissões corretas para o diretório WordPress
echo "Ajustando permissões..."
chown -R www-data:www-data /var/www/html/wordpress
chmod -R 755 /var/www/html/wordpress

# Instalar dependências PHP se necessário
echo "Instalando dependências adicionais..."
apt-get install -y php-curl php-gd php-xml php-mbstring
