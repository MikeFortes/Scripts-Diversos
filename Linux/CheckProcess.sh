#!/bin/sh
SERVICE='XXXXX' #!Seu processo aqui
if ps ax | grep -v grep | grep $SERVICE > /dev/null
then
echo "O serviço $SERVICE esta sendo executado"
else
echo "O serviço $SERVICE esta parado"
fi
