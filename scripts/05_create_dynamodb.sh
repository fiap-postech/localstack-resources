#!/bin/bash

echo "########### Creating dynamodb tables ###########"
aws --endpoint-url=http://localhost:4566 --profile localstack dynamodb create-table \
--table-name manufacture_purchase_entity \
--attribute-definitions AttributeName=id,AttributeType=S AttributeName=status,AttributeType=S AttributeName=date,AttributeType=S \
--key-schema AttributeName=id,KeyType=HASH \
--billing-mode PAY_PER_REQUEST \
--region us-east-1 \
--global-secondary-indexes \
    "[
        {
            \"IndexName\": \"purchase-status-date-index\",
            \"KeySchema\": [{\"AttributeName\":\"status\",\"KeyType\":\"HASH\"},
                            {\"AttributeName\":\"date\",\"KeyType\":\"RANGE\"}],
            \"Projection\":{
                \"ProjectionType\":\"ALL\"
            }
        }
    ]"

aws --endpoint-url=http://localhost:4566 --profile localstack dynamodb update-time-to-live \
--table-name manufacture_purchase_entity \
--time-to-live-specification Enabled=true,AttributeName=ttl