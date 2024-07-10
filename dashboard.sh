#!/bin/bash
#
#######################################
#
#Author : harshil
#Date   : 20th May 2024
#Verion : v1
#
#This script will report the AWS resource Usage
#######################################

set -x

echo "List the list of s3 buckets"
aws s3 ls > output.txt

echo "List the list of Lambda function"
aws lambda list-functions >> output.txt

echo "List of EC2 instances"
aws ec2 describe-instances >> output.txt

echo "List of IAM Users"
aws iam list-users | jq '.Users[].UserName' >> output.txt
echo "List of EBS volumns in cloud"

echo "This is the end of the shell script"
