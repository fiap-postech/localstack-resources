#!/bin/bash

echo "########### Creating S3 buckets ###########"
aws --endpoint-url=http://localhost:4566 --profile localstack s3api create-bucket --bucket customer-data-removal