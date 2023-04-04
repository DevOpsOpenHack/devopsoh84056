#!/bin/bash

terraform fmt -check iac/terraform
if [ $? -ne 0 ]; then
    echo "Terraform files are not properly formatted!"
    exit 1
fi
