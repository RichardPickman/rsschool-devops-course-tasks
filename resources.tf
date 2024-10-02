resource "aws_iam_role" "github_actions_role" {
  name               = "rs-school-dev-ops-github-action-role"
  assume_role_policy = data.aws_iam_policy_document.github_assume_role_policy.json
}

resource "aws_role_policy_attachment" "ec2_full_access" {
  role       = aws_iam_user.github_actions_role.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2FullAccess"
}

resource "aws_role_policy_attachment" "route53_full_access" {
  role       = aws_iam_user.github_actions_role.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonRoute53FullAccess"
}

resource "aws_role_policy_attachment" "s3_full_access" {
  role       = aws_iam_user.github_actions_role.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
}

resource "aws_role_policy_attachment" "iam_full_access" {
  role       = aws_iam_user.github_actions_role.name
  policy_arn = "arn:aws:iam::aws:policy/IAMFullAccess"
}

resource "aws_role_policy_attachment" "vpc_full_access" {
  role       = aws_iam_user.github_actions_role.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonVPCFullAccess"
}

resource "aws_role_policy_attachment" "sqs_full_access" {
  role       = aws_iam_user.github_actions_role.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonSQSFullAccess"
}

resource "aws_role_policy_attachment" "eventbridge_full_access" {
  role       = aws_iam_user.github_actions_role.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonEventBridgeFullAccess"
}