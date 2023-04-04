#!/bin/bash

which terraform
terraform fmt -check iac/terraform
status=$?
echo Terraform status: $status
if [ $status -ne 0 ]; then
    echo "Terraform files are not properly formatted!"
    exit 1
fi
