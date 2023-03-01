#!/bin/bash

# Criação de grupos
groupadd grupoPessoal
groupadd grupoTrabalho

# Criação de usuários
useradd -m -s /bin/bash -g grupoPessoal  DenilsonShow
useradd -m -s /bin/bash -g grupoTrabalho RenataFan

# Definição de senhas
echo "senha1" | passwd --stdin DenilsonShow
echo "senha2" | passwd --stdin RenataFan

# Criação de diretórios
mkdir /home/DenilsonShow/diretorio1
mkdir /home/RenataFan/diretorio2

# Definição de permissões
chmod 770 /home/DenilsonShow/diretorio1
chmod 770 /home/RenataFan/diretorio2

chown DenilsonShow:grupoPessoal /home/DenilsonShow/diretorio1
chown RenataFan:grupoTrabalho /home/RenataFan/diretorio2
