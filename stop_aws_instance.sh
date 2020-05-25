#!/bin/bash

INSTANCE=$(aws ec2 describe-instances | grep -i InstanceId | awk -F":" '{print $2}' | tr -d " \" , ")

aws ec2 stop-instances --instance-ids $INSTANCE
