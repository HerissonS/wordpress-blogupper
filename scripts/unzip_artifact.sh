#!/bin/bash

# Desmontar o diretório /var/www/html/wp-content se ele estiver montado
systemctl stop apache2
umount /var/www/html/wp-content

# Remover arquivos existentes em /var/www/html/
rm -rf /var/www/html/*