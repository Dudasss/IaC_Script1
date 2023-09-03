#!/bin/bash
echo "Criando os usuários"

useradd carlos -c "Carlos" -s /bin/bash -m -p $(openssl passwd senha) -G GRP_ADM
useradd maria -c "Maria" -s /bin/bash -m -p $(openssl passwd senha) -G GRP_ADM
useradd Joao -c "João" -s /bin/bash -m -p $(openssl passwd senha) -G GRP_ADM


useradd debora -c "Débora" -s /bin/bash -m -p $(openssl passwd senha)  -G GRP_VEN
useradd sebastiana -c "Sebastiana" -s /bin/bash -m -p $(openssl passwd senha)  -G GRP_VEN
useradd roberto -c "Roberto" -s /bin/bash -m -p $(openssl passwd senha) -G GRP_VEN


useradd josefina -c "Josefina" -s /bin/bash -m -p $(openssl passwd senha) -G GRP_SEC
useradd amanda -c "Amanda" -s /bin/bash -m -p $(openssl passwd senha)  -G GRP_SEC
useradd roberto -c "Roberto" -s /bin/bash -m -p $(openssl passwd senha) -G GRP_SEC

 echo "Especificando as permissões dos diretórios."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Fim!!!!"
