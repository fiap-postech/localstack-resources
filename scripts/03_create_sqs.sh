#!/bin/bash

echo "########### Creating sqs queues ###########"
aws --endpoint-url=http://localhost:4566 sqs create-queue --profile=localstack --queue-name local-purchase-cart-closed-queue
aws --endpoint-url=http://localhost:4566 sqs create-queue --profile=localstack --queue-name local-payment-purchase-created-queue
aws --endpoint-url=http://localhost:4566 sqs create-queue --profile=localstack --queue-name local-purchase-payment-done-queue
aws --endpoint-url=http://localhost:4566 sqs create-queue --profile=localstack --queue-name local-purchase-payment-created-queue
aws --endpoint-url=http://localhost:4566 sqs create-queue --profile=localstack --queue-name local-purchase-remove-customer-data-queue
aws --endpoint-url=http://localhost:4566 sqs create-queue --profile=localstack --queue-name local-notification-purchase-status-queue
aws --endpoint-url=http://localhost:4566 sqs create-queue --profile=localstack --queue-name local-manufacture-purchase-paid-queue
aws --endpoint-url=http://localhost:4566 sqs create-queue --profile=localstack --queue-name local-customer-remove-customer-data-queue
aws --endpoint-url=http://localhost:4566 sqs create-queue --profile=localstack --queue-name local-customer-remove-data-response-queue

