#-----------------------------------------------------------------------------
# Terraform 0.12.24
# template to create VPC with public and private subnets
#-----------------------------------------------------------------------------

# configure aws provider

provider "aws" {
}

# create VPC

resource "aws_vpc" "dev" {
	cidr_block = "10.32.0.0/16"
	enable_dns_hostnames = true
}

# create route 53 private zone
# this block seems to error out or be documentation inaccurate
# https://www.terraform.io/docs/providers/aws/d/route53_zone.html
/*
data "aws_route53_zone" "dev" {
	name = "ptrkdy.internal"
	private_zone = true
	vpc_id = aws_vpc.dev.id
}
*/

#-----------------------------------------------------------------------------
# EOF
#-----------------------------------------------------------------------------
