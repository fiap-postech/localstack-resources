#!/bin/bash

echo "########### Creating sns topics ###########"
aws --endpoint-url=http://localhost:4566 sns create-topic --profile=localstack --name local-cart-closed-topic
aws --endpoint-url=http://localhost:4566 sns create-topic --profile=localstack --name local-purchase-created-topic
aws --endpoint-url=http://localhost:4566 sns create-topic --profile=localstack --name local-payment-done-topic
aws --endpoint-url=http://localhost:4566 sns create-topic --profile=localstack --name local-payment-created-topic
aws --endpoint-url=http://localhost:4566 sns create-topic --profile=localstack --name local-purchase-status-notification-topic
aws --endpoint-url=http://localhost:4566 sns create-topic --profile=localstack --name local-purchase-paid-topic
aws --endpoint-url=http://localhost:4566 sns create-topic --profile=localstack --name local-customer-remove-data-topic

