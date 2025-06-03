#!/bin/bash
AMI_ID="ami-09c813fb71547fc4f"
SG_ID="sg-0bd9e46d0f3339274"
INSTANCES=("frontend" "mongodb" "redis" "mysql" "catalogue" "shipping" "cart" "user" "payments" "rebbitmq" "dispatch")
ZONE_ID="Z04259892SI66LB8JS18Q"
DOMAIN_NAME="mylearnings.site"
for instance in "${INSTANCES[@]}"; do
	echo "Creating instance for $instance"
	aws ec2 run-instances --image-id ami-09c813fb71547fc4f --instance-type t2.micro --security-group-ids sg-0bd9e46d0f3339274 --tag-specifications "ResourceType=instance,Tags=[{Key=Name, Value=test}]" --query "Instances[0].PrivateIpAddress" --output text
	done
	if [ $instance ! = "frontend" ]
	then
	aws ec2 describe-instances --instance-id i-020f9fbd4c5f9f2c7 --query "Reservations[0].Instances[0].PrivateIpAddress" --output text
	else 
	aws ec2 describe-instances --instance-ids i-020f9fbd4c5f9f2c7 --query "Reservations[0].Instances[0].PrivateIpAddress" --output text
	fi



