#!/bin/bash
# Executar o comando mount -a para montar os sistemas de arquivos
mount -a
if [ $? -ne 0 ]; then
  echo "Erro ao montar os sistemas de arquivos"
  exit 1
else
  echo "Sistemas de arquivos montados com sucesso"
fi
