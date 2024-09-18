#!/bin/bash

# Remover arquivos existentes em /var/www/html/
rm -rf /var/www/html/*

# Verificar se o arquivo existe no S3
if aws s3 ls s3://codebuild-wordpress-blogupper/wordpress-artifact.zip; then
  # Baixar o arquivo do S3
  aws s3 cp s3://codebuild-wordpress-blogupper/wordpress-artifact.zip /tmp/wordpress-artifact.zip
  # Descompactar no diretório correto
  unzip /tmp/wordpress-artifact.zip -d /var/www/html/
  # Configurar permissões
  chown -R www-data:www-data /var/www/html
  chmod -R 755 /var/www/html
else
  echo "Arquivo wordpress-artifact.zip não encontrado no S3"
  exit 1
fi
