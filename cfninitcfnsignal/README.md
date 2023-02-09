# CloudFormation Stack

This CloudFormation stack creates an EC2 instance and sets up an Apache web server with a custom message.

## Parameters
- `LatestAmiId`: The latest Amazon Linux AMI ID. The default value is `/aws/service/ami-amazon-linux-latest/amzn2-ami-hvm-x86_64-gp2`.
- `Message`: The message to be displayed on the HTML page. The default value is `"Cats are the best"`.

## Resources
- `InstanceSecurityGroup`: The security group for the EC2 instance. This security group allows incoming traffic on port 22 (SSH) and port 80 (HTTP).
- `Bucket`: An S3 bucket that stores data.
- `Instance`: The EC2 instance. The instance runs Amazon Linux and sets up an Apache web server. The message from the `Message` parameter is displayed on the default HTML page.


