#!/bin/bash

####################### Dir Create
if [ -f .ssh/id_rsa* ]
then
  echo "seems like you already have a private key"
elif [ "mkdir ~/.ssh" ]
then
  echo ".ssh Directory created"
else
  echo "Ooops there is a problem creating"
fi

######################## KEYGEN
ssh-keygen -t rsa -N "" -f ~/.ssh/id_rsa

######################## EXCHANGE
echo "StrictHostKeyChecking no" >> /etc/ssh/ssh_config

ssh-copy-id ansible@192.168.37.12
ssh-copy-id ansible@192.168.37.13
ssh-copy-id ansible@192.168.37.14
ssh-copy-id ansible@192.168.37.15
ssh-copy-id ansible@192.168.37.16
ssh-copy-id ansible@192.168.37.17
ssh-copy-id ansible@192.168.37.18
ssh-copy-id ansible@192.168.37.19
ssh-copy-id ansible@192.168.37.20
ssh-copy-id ansible@192.168.37.22
ssh-copy-id ansible@192.168.37.23
ssh-copy-id ansible@192.168.37.24
ssh-copy-id ansible@192.168.37.25
ssh-copy-id ansible@192.168.37.26
ssh-copy-id ansible@192.168.37.27
ssh-copy-id ansible@192.168.37.28
ssh-copy-id ansible@192.168.37.29
ssh-copy-id ansible@192.168.37.30
ssh-copy-id ansible@192.168.37.31
ssh-copy-id ansible@192.168.37.32
ssh-copy-id ansible@192.168.37.33
ssh-copy-id ansible@192.168.37.34
ssh-copy-id ansible@192.168.37.35
ssh-copy-id ansible@192.168.37.36
ssh-copy-id ansible@192.168.37.37
ssh-copy-id ansible@192.168.37.38
ssh-copy-id ansible@192.168.37.39
ssh-copy-id ansible@192.168.37.40
