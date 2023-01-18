provider "aws" {
  region     = "us-east-1"
  access_key = "AKIA5IEMZ7NUCMRXE2FJ"
  secret_key = "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"
}

# TEAM 2 RESOURCES [RICHARD, FABRICE, MOSES]

resource "aws_iam_group" "Richard-Che-group" {
  name = "team2"
}

resource "aws_iam_user" "Richard-user1" {
  name = "user1"
}
resource "aws_iam_user" "Richard-user2" {

  name = "user2"
}


resource "aws_iam_group_membership" "Moses-Membership-group" {
  name = "Moses-admin-membership"
  users = [
    aws_iam_user.Richard-user1.name,
    aws_iam_user.Richard-user2.name,
  ]

  group = aws_iam_group.Richard-Che-group.name
}

resource "aws_iam_policy" "admin-moses_policy" {
  name        = "team2-policy"
  description = "This is my admin policy"

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "*",
        ]
        Effect   = "Allow"
        Resource = "*"
      },
    ]
  })
}
resource "aws_iam_group_policy_attachment" "Fabrice-Attach" {
  group      = aws_iam_group.Richard-Che-group.name
  policy_arn = aws_iam_policy.admin-moses_policy.arn
}