#!/bin/bash

echo "Projeto 01"

echo "Criando diretório adm..."
mkdir /adm

echo "Criando grupo adm..."
groupadd GRP_ADM

echo "Criando usuários do grupo adm..."
useradd carlos -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM

echo "Criando diretório ven..."
mkdir /ven

echo "Criando grupo ven..."
groupadd GRP_VEN

echo "Criando usuários do grupo ven..."
useradd debora -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN

echo "Criando diretório sec..."
mkdir /sec

echo "Criando grupo sec..."
groupadd GRP_SEC

echo "Criando usuários do grupo sec..."
useradd josefina -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC


echo "Criando diretório publico..."
mkdir /publico


echo "Vinculando grupos a seus respectivos diretórios...."
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

echo "Especificando permissões dos diretórios...."
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Processo finalizado....."

