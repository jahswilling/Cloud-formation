# Readme for AWS CloudFormation Template

## Parameters
The following parameters are defined in the CloudFormation template:

### LatestAmiId
This parameter defines the Amazon Machine Image (AMI) that will be used for EC2 instances. The default value is the latest version of the Amazon Linux AMI.

### Message
This parameter sets the message that will appear on the HTML page. The default value is "Cats are the best".

## Resources
The following resources will be created as part of the CloudFormation stack:

### InstanceSecurityGroup
This resource creates an EC2 Security Group that allows SSH and HTTP access via port 22 (IPv4) and port 80 (IPv4), respectively.

### Bucket
This resource creates an S3 bucket.

### Instance
This resource creates an EC2 instance using the specified AMI, security group, and user data. The user data script will update the instance, install the Apache web server, and create an HTML page with the specified message. The instance creation process will be signaled as complete after 15 minutes or when the user data script finishes.
