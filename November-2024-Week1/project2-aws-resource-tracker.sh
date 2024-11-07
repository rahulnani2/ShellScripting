#!/bin/bash

#########################################
# Author: "Rahul Dondeti"
# Date: 11-07-2024
# Version: 0.0.1

# This script will report the AWS resourde Usage 

# Resources that are getting tracked in this script 
# AWS S3
# AWS EC2
# AWS Lambds
# AWS IAM Users

##########################################

set -x

# Listing AWS S3 Resource 
aws s3 ls

# Listing AWS EC2 Instances 
aws ec2 describe-instances 

# Listing AWS Lambda Functions 
aws lambda list-functions | jq '.Functions[] | "\(.FunctionName) \(.Runtime) \(.MemorySize) \(.EphemeralStorage)"'


# Listing AWS IAM Users 
aws iam list-users | jq .Users[].UserName
