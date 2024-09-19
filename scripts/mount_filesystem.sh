#!/bin/bash
# Executar o comando mount -a para montar os sistemas de arquivos
systemctl start apache2
rm -rf /var/www/html/index.html
chown -R www-data:www-data /var/www/html
chmod -R 755 /var/www/html
echo "Permissões ajustadas para www-data."
mount -a