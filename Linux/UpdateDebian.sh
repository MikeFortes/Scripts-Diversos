#!/bin/bash

# Script para atualizar distros baseados em debian

clear

echo "********* Atualizar o Sistema *********"

sudo apt-get update && sudo apt-get dist-upgrade -y && sudo apt-get clean && sudo apt-get autoremove -y

if [[ $? -ne 0 ]]
  then
      echo
      echo -e "\t\t\t\t\t\t\033[1;31m Falha no update! \033[0m"
   else 
       echo
       echo -e "\t\t\t\t\t\t\033[1;32m Update completo!  \033[0m"
fi

sleep 3