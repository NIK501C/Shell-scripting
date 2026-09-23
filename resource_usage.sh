#!/bin/bash

# Author: Nikki Kushwaha
# Date: 09/21/2026
# Version: v1

export PATH=/usr/local/bin:/usr/bin:/bin
export AWS_PROFILE=default

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
aws s3 ls >> resourceTracker

# List EC2 insatnces
echo "Listing Ec2 instances"
# aws ec2 describe-instances -- it will list a lot of info about the instances, some of them are not required
# To get only Instance Id
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId' >> resourceTracker

# List IAM users
echo "Listing IAM users"
aws iam list-users >> resourceTracker

# List Lambda functions
echo "Listing Lambda functions"
aws lambda list-functions >> resourceTracker
