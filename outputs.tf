output "oidc_role_arn" {
  description = "arn of the oidc role = store this in the repo secrets with AWS_ROLE_ARN"
  value = aws_iam_role.this.arn
}