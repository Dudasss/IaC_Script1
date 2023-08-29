#!/bin/bash

echo "Criando usuários do sistema..."
useradd guest1 -c "Usuário Convidado" -s /bin/bash -m -p $(openssl passwd senha123)
passwd guest1 -e

useradd guest2 -c"Usuário convidada" -s /bin/bash -m -p $(openssl passwd senha123)
passwd guest2 -e

echo "Finalizado!"
