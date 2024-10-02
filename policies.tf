data "aws_iam_policy_document" "assume_role" {
  statement {
    effect = "Allow"

    principals {
      type        = "Service"
      identifiers = ["ec2.amazonaws.com"]
    }

    actions = ["sts:AssumeRole"]
  }
}

data "aws_iam_policy_document" "github_assume_role_policy" {
    version = "2012-10-17"
    statement {
        actions = ["sts:AssumeRoleWithWebIdentity"]
        principals {
            type        = "Federated"
            identifiers = ["arn:aws:iam::${data.aws_caller_identity.current.account_id}:oidc-provider/token.actions.githubusercontent.com"]
        }
        condition {
            test     = "StringEquals"
            variable = "token.actions.githubusercontent.com:aud"
            values   = ["sts.amazonaws.com"]
        }
        condition {
            test     = "StringLike"
            variable = "token.actions.githubusercontent.com:sub"
            values = [
              "repo:richardpickman/rsschool-devops-course-tasks:ref:refs/heads/main",
        "repo:richardpickman/rsschool-devops-course-tasks:pull_request",
            ]
            
        }
    }
}