#!/bin/bash

# Author: Nikki Kushwaha
# Date: 09/21/2026
# Version: v1

<< comment

This script is used to monitor the AWS resources usage"
Monitoing the below AWS resources:
IAM users
EC2
S3
Lambda
comment

# List s3 buckets
echo "Listing S3 buckets"
aws s3 ls

# List EC2 insatnces
echo "Listing Ec2 instances"
aws ec2 describe-instances

# List IAM users
echo "Listing IAM users"
aws iam list-users

# List Lambda functions
echo "Listing Lambda functions"
aws lambda list-functions
