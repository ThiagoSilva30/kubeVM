#!/bin/bash

INSTANCE=$(aws ec2 describe-instances | grep -n PublicDnsName | grep "9:" | awk -F":" '{print $3}' | tr -d ",\" ")

if [ -z $INSTANCE ]
then
    echo "Instancia nao esta estartada"
else
    echo "Instancia estartada"
    echo "DNS: $INSTANCE"
fi
