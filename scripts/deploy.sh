#!/bin/bash
# Deployment script for Alistair Test

echo "Starting deployment..."

# Initialize Terraform
cd terraform/environments/prod
terraform init

# Plan changes
terraform plan -out=tfplan

# Apply changes
terraform apply tfplan

echo "Deployment complete!"
