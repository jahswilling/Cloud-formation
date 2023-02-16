# VPC Peering CloudFormation Template

This CloudFormation template creates a demo environment with 3 VPCs and EC2 instances in each of them. It also creates Security Groups for each VPC to enable SSH access via port 22 for both IPv4 and IPv6 traffic.

## Parameters
`LatestAmiId`: The ID of the Amazon Machine Image (AMI) to use for the Bastion Host. The default value is the latest Amazon Linux 2 AMI.

## Resources
- `VPCA`, `VPCB`, `VPCC`: Three VPCs are created, each with a different CIDR block, DNS support, DNS hostnames, and a name tag.
- `SubnetA`, `SubnetB`, `SubnetC`: A subnet is created in each VPC with a unique CIDR block and a name tag.
- `VPCASecurityGroup`, `VPCBSecurityGroup`, `VPCCSecurityGroup`: A Security Group is created for each VPC with a name tag and Ingress rules to allow SSH access via port 22 for both IPv4 and IPv6 traffic.
- `VPCASecurityGroupSelfReferenceRule`, `VPCBSecurityGroupSelfReferenceRule`, `VPCCSecurityGroupSelfReferenceRule`: Self-reference rules are added to each Security Group to enable communication within the VPC.
- `PrivateEC2A`, `PrivateEC2B`, `PrivateEC2C`: An EC2 instance is launched in each VPC with the latest AMI specified in the `LatestAmiId` parameter.

## Deployment
To deploy this CloudFormation template, you can use the AWS Console, AWS CLI, or any other AWS SDK.

When launching the CloudFormation stack, you need to specify the parameter `LatestAmiId` with the ID of the Amazon Machine Image to use for the Bastion Host. The default value is the latest Amazon Linux 2 AMI.

After the stack is launched, you can access the EC2 instances via SSH using the public IP address and the private key associated with the key pair specified when launching the stack.

## Cleanup
To delete the stack, you can use the AWS Console, AWS CLI, or any other AWS SDK.

Deleting the stack will also delete all the resources created by the CloudFormation template.
