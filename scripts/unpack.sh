#!/bin/bash
# Descompacta o arquivo do artefato no diretório de destino
ARTIFACT_PATH="/tmp/wordpress-artifact.zip"

if [ -f "$ARTIFACT_PATH" ]; then
    unzip -o "$ARTIFACT_PATH" -d /var/www/html/
    echo "Arquivo descompactado com sucesso em /var/www/html"
else
    echo "Arquivo $ARTIFACT_PATH não encontrado."
    exit 1
fi
