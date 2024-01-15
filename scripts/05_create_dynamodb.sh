#!/bin/bash

echo "########### Creating dynamodb tables ###########"
aws --endpoint-url=http://localhost:4566 --profile localstack dynamodb create-table --table-name MANUFACTURE_PURCHASE --key-schema AttributeName=id,KeyType=HASH --attribute-definitions AttributeName=id,AttributeType=S --billing-mode PAY_PER_REQUEST --region us-east-1
aws --endpoint-url=http://localhost:4566 --profile localstack dynamodb update-time-to-live --table-name MANUFACTURE_PURCHASE --time-to-live-specification Enabled=true,AttributeName=ttl