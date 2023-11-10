#!/bin/bash

# Garantir que python3 está instalado
if [ ! -x /bin/python3 ] || [ ! -x /usr/bin/python3 ]; then
  apt update
  apt install -y python3
else
  echo "python3 já está instalado"
fi

# Definir o interpretador padrão do ansible como python3
if [ ! -f /etc/ansible ]; then
  mkdir /etc/ansible
  echo -e "[defaults]\ninterpreter_python = auto" > /etc/ansible/ansible.cfg
else
  echo -e "[defaults]\ninterpreter_python = auto" >> /etc/ansible/ansible.cfg
fi
