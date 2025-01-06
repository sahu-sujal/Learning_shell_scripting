#!/bin/bash

###########################
#
# Author: Sujal Sahu
# Date: 03/01/2025
#
# Version: v1.0
#
# This script is used to report tha AWS resource Usage
#
###########################

# We are Going to Track
# AWS S3
# AWS EC2
# AWS Lambda
# AWS IAM Users

#set -x

echo "Configure AWS"
#aws configure

#list S3 buckets
echo "listing all s3 buckets"
aws s3 ls

#list EC2 Instances
echo "listing all the instance ID"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

#list aws lambda function
echo "listing lambda functions"
aws lambda list-functions

#list IAM users
echo "listing Iam users"
aws iam list-users | jq '.Users[].UserId'

