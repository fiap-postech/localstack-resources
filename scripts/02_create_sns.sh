#!/bin/bash

echo "########### Creating sns topics ###########"
aws --endpoint-url=http://localhost:4566 sns create-topic --profile=localstack --name local-cart-closed-topic
aws --endpoint-url=http://localhost:4566 sns create-topic --profile=localstack --name local-payment-done-topic
aws --endpoint-url=http://localhost:4566 sns create-topic --profile=localstack --name local-purchase-created-topic
aws --endpoint-url=http://localhost:4566 sns create-topic --profile=localstack --name local-payment-created-topic

