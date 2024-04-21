#!/bin/bash

echo "Criando os diretorios"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos usuarios"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuarios"

useradd carlos -c "Carlos" -m -s /bin/bash -G GRP_ADM
useradd maria -c "Maria" -m -s /bin/bash -G GRP_ADM
useradd joao -c "Jaao" -m -s /bin/bash -G GRP_ADM

useradd debora -c "Debora" -m -s /bin/bash -G GRP_VEN
useradd sebastiana -c "Sebastiana" -m -s /bin/bash -G GRP_VEN
useradd roberto -c "Roberto" -m -s /bin/bash -G GRP_VEN

useradd josefina -c "Josefina" -m -s /bin/bash -G GRP_SEC
useradd amanda -c "Amanda" -m -s /bin/bash -G GRP_SEC
useradd rogerio -c "Rogerio" -m -s /bin/bash -G GRP_SEC

echo "Ajustando permisao..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "FIM..."
