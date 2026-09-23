# =============================================================
# modules/vpc/main.tf — Phase 1 Import
# =============================================================

# --- VPC 1: security-vpc ---
resource "aws_vpc" "security_vpc" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = true
  tags = { Name = "security-vpc" }
}

resource "aws_internet_gateway" "security_igw" {
  vpc_id = aws_vpc.security_vpc.id
  tags   = { Name = "security-igw" }
}

resource "aws_subnet" "security_public_2a" {
  vpc_id            = aws_vpc.security_vpc.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "us-east-2a"
  tags              = { Name = "security-public-2a" }
}
resource "aws_subnet" "security_public_2b" {
  vpc_id            = aws_vpc.security_vpc.id
  cidr_block        = "10.0.2.0/24"
  availability_zone = "us-east-2b"
  tags              = { Name = "security-public-2b" }
}
resource "aws_subnet" "security_public_2c" {
  vpc_id            = aws_vpc.security_vpc.id
  cidr_block        = "10.0.5.0/24"
  availability_zone = "us-east-2c"
  tags              = { Name = "security-public-2c" }
}
resource "aws_subnet" "security_private_2a" {
  vpc_id            = aws_vpc.security_vpc.id
  cidr_block        = "10.0.3.0/24"
  availability_zone = "us-east-2a"
  tags              = { Name = "security-private-2a" }
}
resource "aws_subnet" "security_private_2b" {
  vpc_id            = aws_vpc.security_vpc.id
  cidr_block        = "10.0.4.0/24"
  availability_zone = "us-east-2b"
  tags              = { Name = "security-private-2b" }
}
resource "aws_subnet" "security_private_2c" {
  vpc_id            = aws_vpc.security_vpc.id
  cidr_block        = "10.0.6.0/24"
  availability_zone = "us-east-2c"
  tags              = { Name = "security-private-2c" }
}

resource "aws_route_table" "security_public_rt" {
  vpc_id = aws_vpc.security_vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.security_igw.id
  }
  tags = { Name = "security-public-rt" }
}

resource "aws_route_table" "security_private_rt" {
  vpc_id = aws_vpc.security_vpc.id
  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = "nat-05b347ea46e616f47"
  }
  tags = { Name = "security-private-rt" }
}

resource "aws_route_table_association" "security_public_2a" {
  subnet_id      = aws_subnet.security_public_2a.id
  route_table_id = aws_route_table.security_public_rt.id
}
resource "aws_route_table_association" "security_public_2b" {
  subnet_id      = aws_subnet.security_public_2b.id
  route_table_id = aws_route_table.security_public_rt.id
}
resource "aws_route_table_association" "security_public_2c" {
  subnet_id      = aws_subnet.security_public_2c.id
  route_table_id = aws_route_table.security_public_rt.id
}
resource "aws_route_table_association" "security_private_2a" {
  subnet_id      = aws_subnet.security_private_2a.id
  route_table_id = aws_route_table.security_private_rt.id
}
resource "aws_route_table_association" "security_private_2b" {
  subnet_id      = aws_subnet.security_private_2b.id
  route_table_id = aws_route_table.security_private_rt.id
}
resource "aws_route_table_association" "security_private_2c" {
  subnet_id      = aws_subnet.security_private_2c.id
  route_table_id = aws_route_table.security_private_rt.id
}

# --- VPC 2: dbi360-dev-stage-vpc ---
resource "aws_vpc" "dbi360_dev_stage_vpc" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = true
  tags = { Name = "dbi360-dev-stage-vpc" }
}

resource "aws_internet_gateway" "dbi360_dev_stage_igw" {
  vpc_id = aws_vpc.dbi360_dev_stage_vpc.id
  tags   = { Name = "dbi360-dev-stage-igw" }
}

resource "aws_subnet" "dbi360_dev_stage_public1_2a" {
  vpc_id            = aws_vpc.dbi360_dev_stage_vpc.id
  cidr_block        = "10.0.0.0/20"
  availability_zone = "us-east-2a"
  tags              = { Name = "dbi360-dev-stage-subnet-public1-us-east-2a" }
}
resource "aws_subnet" "dbi360_dev_stage_public2_2b" {
  vpc_id            = aws_vpc.dbi360_dev_stage_vpc.id
  cidr_block        = "10.0.16.0/20"
  availability_zone = "us-east-2b"
  tags              = { Name = "dbi360-dev-stage-subnet-public2-us-east-2b" }
}
resource "aws_subnet" "dbi360_dev_stage_private1_2a" {
  vpc_id            = aws_vpc.dbi360_dev_stage_vpc.id
  cidr_block        = "10.0.128.0/20"
  availability_zone = "us-east-2a"
  tags              = { Name = "dbi360-dev-stage-subnet-private1-us-east-2a" }
}
resource "aws_subnet" "dbi360_dev_stage_private2_2b" {
  vpc_id            = aws_vpc.dbi360_dev_stage_vpc.id
  cidr_block        = "10.0.144.0/20"
  availability_zone = "us-east-2b"
  tags              = { Name = "dbi360-dev-stage-subnet-private2-us-east-2b" }
}

resource "aws_route_table" "dbi360_dev_stage_rtb_public" {
  vpc_id = aws_vpc.dbi360_dev_stage_vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.dbi360_dev_stage_igw.id
  }
  tags = { Name = "dbi360-dev-stage-rtb-public" }
}

resource "aws_route_table" "dbi360_dev_stage_rtb_private1_2a" {
  vpc_id = aws_vpc.dbi360_dev_stage_vpc.id
  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = "nat-03f25ca7bc9110f9d"
  }
  route {
    cidr_block                = "10.2.0.0/16"
    vpc_peering_connection_id = "pcx-0e31373dfecbdb111"
  }
  tags = { Name = "dbi360-dev-stage-rtb-private1-us-east-2a" }
}

resource "aws_route_table" "dbi360_dev_stage_rtb_private2_2b" {
  vpc_id = aws_vpc.dbi360_dev_stage_vpc.id
  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = "nat-03f25ca7bc9110f9d"
  }
  route {
    cidr_block                = "10.2.0.0/16"
    vpc_peering_connection_id = "pcx-0e31373dfecbdb111"
  }
  tags = { Name = "dbi360-dev-stage-rtb-private2-us-east-2b" }
}

resource "aws_route_table_association" "dbi360_dev_stage_public1_2a" {
  subnet_id      = aws_subnet.dbi360_dev_stage_public1_2a.id
  route_table_id = aws_route_table.dbi360_dev_stage_rtb_public.id
}
resource "aws_route_table_association" "dbi360_dev_stage_public2_2b" {
  subnet_id      = aws_subnet.dbi360_dev_stage_public2_2b.id
  route_table_id = aws_route_table.dbi360_dev_stage_rtb_public.id
}
resource "aws_route_table_association" "dbi360_dev_stage_private1_2a" {
  subnet_id      = aws_subnet.dbi360_dev_stage_private1_2a.id
  route_table_id = aws_route_table.dbi360_dev_stage_rtb_private1_2a.id
}
resource "aws_route_table_association" "dbi360_dev_stage_private2_2b" {
  subnet_id      = aws_subnet.dbi360_dev_stage_private2_2b.id
  route_table_id = aws_route_table.dbi360_dev_stage_rtb_private2_2b.id
}

# --- VPC 3: Meraki-VPN-VPC (VPN connected — import only, no changes) ---
resource "aws_vpc" "meraki_vpn_vpc" {
  cidr_block           = "172.30.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = true
  tags = { Name = "Meraki-VPN-VPC" }
}

resource "aws_internet_gateway" "meraki_vpn_igw" {
  vpc_id = aws_vpc.meraki_vpn_vpc.id
  tags   = { Name = "Meraki-VPN-igw" }
}

resource "aws_subnet" "meraki_vpc_subnet" {
  vpc_id            = aws_vpc.meraki_vpn_vpc.id
  cidr_block        = "172.30.0.0/24"
  availability_zone = "us-east-2a"
  tags              = { Name = "Meraki-VPC-Subnet" }
}
