# Implantação da stack completa do Zabbix em um único servidor usando Ansible

---

## Introdução

Neste projeto, há a criação de uma máquina virtual Vagrant que será provisionada pelo Ansible, que por sua vez irá implantar o Zabbix Server, Servidor HTTP Apache2, Banco de Dados MySQL e Zabbix Agent, configurando-os.

---

## Como usar este projeto

Para iniciar a máquina virtual, execute:

`vagrant up`

Para destruir a máquina virtual, execute:

`vagrant destroy -f`

Para acessar o Zabbix Frontend, digite o seguinte endereço na barra de pesquisa de um navegador web:

`192.168.56.2`

Assim que a tela de login do Zabbix Frontend aparecer, digite as seguintes credenciais:

**Username**: Admin

**Password**: zabbix

Aproveite seu monitoramento. :smiley:

SIMBORA!
