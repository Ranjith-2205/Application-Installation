#!/bin/bash

# Variables for AWS Configuration
AWS_ACCESS_KEY_ID="your_access_key_id"
AWS_SECRET_ACCESS_KEY="your_secret_access_key"
AWS_DEFAULT_REGION="your_region"
AWS_OUTPUT_FORMAT="json" # Or you can set it to 'text' or 'table'

# Install AWS CLI (version 2)
echo "Installing AWS CLI..."
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install

# Verify Installation
if aws --version; then
  echo "AWS CLI installed successfully!"
else
  echo "AWS CLI installation failed."
  exit 1
fi

# Configure AWS CLI with passed credentials and region
echo "Configuring AWS CLI with provided credentials..."

aws configure set aws_access_key_id "$AWS_ACCESS_KEY_ID"
aws configure set aws_secret_access_key "$AWS_SECRET_ACCESS_KEY"
aws configure set default.region "$AWS_DEFAULT_REGION"
aws configure set output "$AWS_OUTPUT_FORMAT"

# Verify Configuration
echo "Verifying AWS Configuration..."
aws sts get-caller-identity

if [ $? -eq 0 ]; then
  echo "AWS CLI configured successfully!"
else
  echo "AWS CLI configuration failed."
  exit 1
fi

# Clean up installation files
rm awscliv2.zip
rm -rf aws

echo "AWS CLI and Configuration completed successfully!"
