#!/bin/sh
# Bruno Silva
# 14/01/2021
apt install -y npm
apt-get update -y
apt-get install -y curl
npm install sails -g
#Criando a aplicação no framework Sails
sails new messageApp && cd messageApp

#Criando a API message
sails generate api message

#Rodando a aplicação
sails lift

#Criando mensagens de teste
curl -XPOST http://localhost:1337/message?text=hello
curl -XPOST http://localhost:1337/message?text=hola

#Listando as mensagens
curl http://localhost:1337/message
