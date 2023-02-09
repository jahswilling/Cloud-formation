# CloudFormation Readme

## Parameters
### LatestAmiId
- Description: The AMI for EC2
- Default value: "/aws/service/ami-amazon-linux-latest/amzn2-ami-hvm-x86_64-gp2"

### Message
- Description: The message to be displayed on the HTML page
- Default value: "Cats are the best"

## Resources
### InstanceSecurityGroup
- Description: The security group for the EC2 instance
- Allows SSH access via port 22 and HTTP access via port 80

### Bucket
- Description: An S3 bucket to store objects

### Instance
- Description: The EC2 instance with an Apache web server that serves the HTML page with the message

## Usage
1. Create a new CloudFormation stack using the template
2. Pass the desired values for the parameters
3. Wait for the stack to be created
4. Get the public IP of the EC2 instance and access the HTML page in a web browser using the IP

## Notes
- This template uses the cfn-init and cfn-signal scripts for initializing and signaling the CloudFormation stack
- The EC2 instance is created with a creation policy that signals the CloudFormation stack once the instance is ready to be used. The timeout for the policy is 15 minutes.
