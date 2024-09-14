#!/bin/bash
# Parar o servidor Apache
echo "Parando o servidor Apache..."
systemctl stop apache2

# Fazer backup dos arquivos existentes
echo "Fazendo backup dos arquivos existentes..."
if [ -d /var/www/html/wordpress ]; then
    mv /var/www/html/wordpress /var/www/html/wordpress-backup-$(date +%F-%T)
fi
