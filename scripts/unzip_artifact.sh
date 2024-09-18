#!/bin/bash

# Configurar credenciais AWS (substitua pelas suas credenciais)
# export AWS_ACCESS_KEY_ID="AKIAXYKJUQ43T3HRUMWI"
# export AWS_SECRET_ACCESS_KEY="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"
# export AWS_DEFAULT_REGION="us-east-1"

# Desmontar o diretório /var/www/html/wp-content se ele estiver montado
if mountpoint -q /var/www/html/wp-content; then
  umount /var/www/html/wp-content
fi

# Remover arquivos existentes em /var/www/html/
rm -rf /var/www/html/*

# Verificar se o arquivo existe no S3
# if aws s3 ls s3://codebuild-wordpress-blogupper/wordpress-artifact.zip; then
  # Baixar o arquivo do S3
  # aws s3 cp s3://codebuild-wordpress-blogupper/wordpress-artifact.zip /tmp/wordpress-artifact.zip
  # Descompactar no diretório correto
  # unzip -o /tmp/wordpress-artifact.zip -d /var/www/html/
  # Configurar permissões
  # chown -R www-data:www-data /var/www/html
  # chmod -R 755 /var/www/html
# else
  # echo "Arquivo wordpress-artifact.zip não encontrado no S3"
  # exit 1
# fi
