#!/bin/bash
# Parar o servidor Apache
echo "Parando o servidor Apache..."
systemctl stop apache2

# Fazer backup dos arquivos existentes no diretório principal
echo "Fazendo backup dos arquivos existentes..."
if [ -d /var/www/html ]; then
    cp /var/www/html /var/www/html-backup-$(date +%F-%T)
    mkdir /var/www/html # Cria novamente o diretório vazio
fi
