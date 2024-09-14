#!/bin/bash
# Verificar se o Apache está rodando
echo "Validando serviço..."
if systemctl is-active --quiet apache2; then
    echo "O Apache está rodando corretamente."
else
    echo "Erro: O Apache não está rodando."
    exit 1
fi

# Verificar se o WordPress está acessível (pode ser alterado para o URL real)
curl -I http://localhost/wordpress | grep "200 OK" > /dev/null
if [ $? -ne 0 ]; then
    echo "Erro: O WordPress não está acessível."
    exit 1
else
    echo "O WordPress está acessível."
fi
