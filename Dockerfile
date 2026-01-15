FROM localstack/localstack

# Set dummy AWS credentials for LocalStack
ARG ENV AWS_ACCESS_KEY_ID=test
ARG ENV AWS_SECRET_ACCESS_KEY=test
ARG ENV AWS_DEFAULT_REGION=eu-north-1

# Create init directory (safety)
RUN mkdir -p /etc/localstack/init/ready.d

# Copy setup script into container
COPY init/setup.sh /etc/localstack/init/ready.d/setup.sh

# FIX ALL PERMISSIONS INSIDE DOCKERFILE
RUN chmod 777 /etc/localstack/init/ready.d/setup.sh && \
    dos2unix /etc/localstack/init/ready.d/setup.sh || true

# Ensure script is executable
RUN chmod +x /etc/localstack/init/ready.d/setup.sh
