# S3 Bucket Using a Custom Resource

This repository provides an AWS CloudFormation template to create a custom resource to copy S3 objects from one bucket to another. The resources used in the template include:

- AWS::S3::Bucket - to create a new S3 bucket
- Custom::S3Objects - to create a custom resource to copy S3 objects
- AWS::IAM::Role - to define an IAM role for the Lambda function to assume
- AWS::Lambda::Function - to create a Lambda function to copy objects from one S3 bucket to another.

## Prerequisites
- An AWS account
- AWS CLI installed and configured with AWS credentials

## Deployment
To deploy the CloudFormation stack, run the following command in your terminal:

`aws cloudformation create-stack --stack-name <stack-name> --template-body customresource.yaml`

Replace `<stack-name>` with the desired name of the CloudFormation stack

## Stack Output
The CloudFormation stack will output the ARN of the created S3 bucket.

## Cleanup
To delete the CloudFormation stack and all its resources, run the following command in your terminal:
`aws cloudformation delete-stack --stack-name <stack-name>`

