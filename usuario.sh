#!/bin/bash
echo "Criando grupos"
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "criando usuários"
useradd -ms /bin/bash carlos -G GRP_ADM -p $(openssl passwd -crypt Senha123)
useradd -ms /bin/bash maria -G GRP_ADM -p $(openssl passwd -crypt Senha123)
useradd -ms /bin/bash joao -G GRP_ADM -p $(openssl passwd -crypt Senha123)

useradd -ms /bin/bash debora -G GRP_VEN -p $(openssl passwd -crypt Senha123)
useradd -ms /bin/bash sebastiana -G GRP_VEN -p $(openssl passwd -crypt Senha123)
useradd -ms /bin/bash roberto -G GRP_VEN -p $(openssl passwd -crypt Senha123)

useradd -ms /bin/bash josefina -G GRP_SEC -p $(openssl passwd -crypt Senha123)
useradd -ms /bin/bash amanda -G GRP_SEC -p $(openssl passwd -crypt Senha123)
useradd -ms /bin/bash rogerio -G GRP_SEC -p $(openssl passwd -crypt Senha123)

echo "Criando diretórios"
mkdir /publico /adm /ven /sec
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo -e "\e[0;32m Finalizado! \e[m"
