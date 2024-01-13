FROM localstack/localstack:3.0.2

COPY scripts /etc/localstack/init/ready.d/
