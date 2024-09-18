#!/bin/bash
# Limpa a pasta do WordPress antes da instalação
touch /var/www/html/teste.txt
rm -rf /var/www/html/*
echo "Diretório /var/www/html limpo."
