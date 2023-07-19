resource "aws_iam_user_login_profile" "administrator" {
  count                   = length(var.iamusers)
  user                    = var.iamusers[count.index]
  password_reset_required = true
  depends_on              = [aws_iam_user.users]
}
