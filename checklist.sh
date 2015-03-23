#!/bin/bash

clear

echo "Digite o ip ou nome do servidor:   "

read ip

ping -c3 $ip > /dev/null

if [[ $? -eq 0 ]]; then
	# $? testa retorno de erro de um comando
	then
	echo "servidor online"
else
	echo "Servidor offline - Entre em contato com administrador"
fi

sleep 1

ssh $ip $servidor