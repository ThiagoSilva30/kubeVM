#!/bin/bash


INSTANCE=$(aws ec2 describe-instances | grep -n PublicDnsName | grep "9:" | awk -F":" '{print $3}' | tr -d ",\" ")

ssh -i "kubectlkey.pem" ubuntu@$INSTANCE
