#!/bin/bash

##############################################

# This script will list all the resources in the AWS Account 
# Author: "Rahul Dondeti"
# Version: v0.0.1

# Following are the Supported Services by the script
# 1. EC2
# 2. S3
# 3. RDS
# 4. DynamoDB
# 5. Lambda
# 6. EBS
# 7. ELB
# 8. CloudFront
# 9. CloudWatch 
# 10. SNS
# 11. SQS
# 12. Route53
# 13. VPC
# 14. CloudFormation
# 15. IAM

# Usage: ./aws_resource_list.sh <region> <service_name>
# Example: ./aws_resource_list.sh es-east-1 EC2 

##############################################


# Check if the required number of arguments are passed 

if [ $# -ne 2 ] ; then 
    echo "Usage: $0 <region> <service_name>"
    exit 1
fi 

# Assigning the arguments to variables ans convert the service to lowercase
aws_region=$1
aws_service=$(echo "$2" | tr '[:upper:]' '[:lower:]')

# Check if the AWS CLI is installed 
if ! command -v aws &> /dev/null; then 
  echo "AWS CLI is not installed. Please install it and try again "
  exit 1
fi

# Check if the AWS CLI is configured 
 if [ ! -d ~/.aws ] ; then  # -d param checks if the directory is exists are not 
   echo " AWS CLI is not configured. Please configure and ty again "
   exit 1
fi 

# Execute the AWS CLI command based on the service name 
case $2 in 
   ec2)
        echo "Listing EC2 Instances in $aws_region"
        aws ec2 describe-instances --region $aws_region
        ;;
   rds)
        echo "Listing RDS Instances in $aws_region"
        aws ec2 describe--db-instances --region $aws_region
        ;;
   s3)
        echo "Listing S3 buckets in $aws_region"
        aws s3api list-buckets --region $aws_region
        ;;
   cloudfront)
        echo "Listing cloudfront Distributions in $aws_region"
        aws cloudrfont list-distributions --region $aws_region
        ;;
   vpc)  
        echo "Listig VPCs in $aws_region"
        aws ec2 describe-vpcs --region $aws_region
        ;;
   iam)
        echo "Listing IAM Users in $aws_region"
        aws iam lis-users --region $aws_region
        ;;
   route5)
        echo "Listing Route53 Hosted Zones in $aws_region"
        aws route53 list-hosted-zones --region $aws_region
        ;;
    cloudwatch)
        echo "Listing CloudWatch Alarms in $aws_region"
        aws cloudwatch describe-alarms --region $aws_region
        ;;
    cloudformation)
        echo "Listing CloudFormation Stacks in $aws_region"
        aws cloudformation describe-stacks --region $aws_region
        ;;
    lambda)
        echo "Listing Lambda Functions in $aws_region"
        aws lambda list-functions --region $aws_region
        ;;
    sns)
        echo "Listing SNS Topics in $aws_region"
        aws sns list-topics --region $aws_region
        ;;
    sqs)
        echo "Listing SQS Queues in $aws_region"
        aws sqs list-queues --region $aws_region
        ;;
    dynamodb)
        echo "Listing DynamoDB Tables in $aws_region"
        aws dynamodb list-tables --region $aws_region
        ;;
    ebs)
        echo "Listing EBS Volumes in $aws_region"
        aws ec2 describe-volumes --region $aws_region
        ;;
    *)
        echo "Invalid service. Please enter a valid service."
        exit 1
        ;;
esac          