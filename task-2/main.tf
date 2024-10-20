resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "Rs School Task 2"
  }
}

resource "aws_subnet" "public_subnets" {
  count      = length(var.public_subnet_cidrs)
  vpc_id     = aws_vpc.main.id
  cidr_block = element(var.public_subnet_cidrs, count.index)


  tags = {
    Name = "Rs School Task 2 Public Subnet ${count.index + 1}"
  }
}



resource "aws_subnet" "private_subnets" {
  count      = length(var.private_subnet_cidrs)
  vpc_id     = aws_vpc.main.id
  cidr_block = element(var.private_subnet_cidrs, count.index)

  tags = {
    Name = "Rs School Task 2 Private Subnet ${count.index + 1}"
  }
}