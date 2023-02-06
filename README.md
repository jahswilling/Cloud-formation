# AWS CloudFormation Template

## Introduction
This AWS CloudFormation template creates an EC2 instance, security group and IAM instance profile to allow SSH and HTTP access.

## Parameters
- `LatestAmiId`: The latest Amazon Machine Image (AMI) ID for Amazon Linux, stored as an SSM parameter.
- `KeyName`: Name of an existing SSH Keypair to access the instance.
- `SSHandWebLocation`: The IP address range that can be used to SSH to the EC2 instances and access the web.

## Resources
- `EC2Instance`: An EC2 instance with the latest Amazon Linux AMI, an IAM instance profile, and a security group that allows SSH and HTTP access.
- `InstanceSecurityGroup`: A security group that allows SSH and HTTP access from the specified IP range.
- `SessionManagerRole`: An IAM role that allows the EC2 instance to use AWS Systems Manager.
- `SessionManagerInstanceProfile`: An IAM instance profile that associates the EC2 instance with the Systems Manager role.

## Outputs
- `InstanceId`: The ID of the newly created EC2 instance.
- `AZ`: The Availability Zone of the newly created EC2 instance.
- `PublicDNS`: The public DNS name of the newly created EC2 instance.
- `PublicIP`: The public IP address of the newly created EC2 instance.

## Usage
To create a stack using this template, you can use the AWS Management Console, AWS CLI, or AWS CloudFormation API. Before you create the stack, make sure that you have an SSH Keypair created in the same region where you plan to create the stack. When prompted, provide the Keypair name and the IP address range that you want to use to SSH to the EC2 instance.
