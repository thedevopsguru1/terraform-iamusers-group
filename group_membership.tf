resource "aws_iam_user_group_membership" "devstream" {
  count      = length(var.iamusers)
  user       = var.iamusers[count.index]
  groups     = [aws_iam_group.administrators.name]
  depends_on = [aws_iam_user.users]
}