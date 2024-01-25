#!/bin/bash

echo "########### Creating sqs queues ###########"
aws --endpoint-url=http://localhost:4566 sqs create-queue --profile=localstack --queue-name local-payment-cart-closed-queue
aws --endpoint-url=http://localhost:4566 sqs create-queue --profile=localstack --queue-name local-purchase-payment-done-queue
aws --endpoint-url=http://localhost:4566 sqs create-queue --profile=localstack --queue-name local-manufacture-purchase-created-queue
aws --endpoint-url=http://localhost:4566 sqs create-queue --profile=localstack --queue-name local-payment-created-queue
