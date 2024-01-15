#!/bin/bash

echo "########### Creating sns subscriptions ###########"
aws --endpoint-url=http://localhost:4566 sns subscribe --profile=localstack --topic-arn arn:aws:sns:us-east-1:000000000000:local-cart-closed-topic --protocol sqs --notification-endpoint arn:aws:sqs:us-east-1:000000000000:local-payment-cart-closed-queue --attributes RawMessageDelivery=true
aws --endpoint-url=http://localhost:4566 sns subscribe --profile=localstack --topic-arn arn:aws:sns:us-east-1:000000000000:local-payment-done-topic --protocol sqs --notification-endpoint arn:aws:sqs:us-east-1:000000000000:local-purchase-payment-done-queue --attributes RawMessageDelivery=true
aws --endpoint-url=http://localhost:4566 sns subscribe --profile=localstack --topic-arn arn:aws:sns:us-east-1:000000000000:local-purchase-created-topic --protocol sqs --notification-endpoint arn:aws:sqs:us-east-1:000000000000:local-manufacture-purchase-created-queue --attributes RawMessageDelivery=true
