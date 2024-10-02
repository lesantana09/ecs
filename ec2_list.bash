#!/bin/bash

# Get a list of all available AWS regions
regions=$(aws ec2 describe-regions --query "Regions[*].RegionName" --output text)

# Loop through each region and list running EC2 instances
for region in $regions; do
    echo "Region: $region"
    aws ec2 describe-instances --region $region --filters "Name=instance-state-name,Values=running" --query "Reservations[*].Instances[*].[InstanceId,InstanceType,PublicIpAddress,Tags[?Key=='Name'].Value | [0]]" --output table
done
