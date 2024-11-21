#!/bin/bash

# Verificar si la instancia EC2 está corriendo
instance_status=$(aws ec2 describe-instances --instance-ids $(terraform output -raw ec2_instance_id) --query 'Reservations[0].Instances[0].State.Name' --output text)
if [ "$instance_status" == "running" ]; then
  echo "EC2 instance is running"
else
  echo "EC2 instance is not running"
  exit 1
fi

# Verificar si el bucket S3 existe
bucket_exists=$(aws s3 ls "s3://$(terraform output -raw s3_bucket_name)" 2>&1)
if [[ "$bucket_exists" == *"No such bucket"* ]]; then
  echo "S3 bucket does not exist"
  exit 1
else
  echo "S3 bucket exists"
fi
