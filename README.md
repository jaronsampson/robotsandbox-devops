# robotsandbox-devops
# Brief
This is the Cloud Formation and Ansible code I used for hosting the jaronsampson.com and robotsandbox.com websites in Amazon Web Services.

# Details
It depends on an AWS VPC with two public subnets, two private subnets, a NAT gateway, a security group for the web heads, and a Canonical Ubuntu 16.04 AMI available from the AWS Marketplace.

It creates two Ubuntu EC2 instances (the web heads) and manages the installation and configuration of Ruby, Jekyll, and nginx on those. It also automates the delivery of website code updates from github.com. 

It also creates a classic Elastic Load Balancer and a security group for it, and places the webhead instances behind it.

# Status
Due to the high AWS spend this infrastructure architecture requires, I no longer host these websites in AWS and this code is provided as example infrastructure-as-code. The websites are currently hosted by GitHub Pages, which also simplifies the delivery pipeline.
