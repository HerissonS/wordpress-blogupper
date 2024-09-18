#!/bin/bash
# Ajusta as permissões dos arquivos
chown -R www-data:www-data /var/www/html
chmod -R 755 /var/www/html
echo "Permissões ajustadas para www-data."
mount -a