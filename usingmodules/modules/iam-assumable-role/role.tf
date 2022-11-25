data "aws_iam_policy_document" "assume_role" {
  statement {
    effect = "Allow"

    actions = ["sts:AssumeRole"]

    principals {
      type        = "AWS"
      identifiers = var.trusted_role_arns
    }

    principals {
      type        = "Service"
      identifiers = var.trusted_role_services
    }
  }
}

data "aws_iam_policy_document" "assume_role_with_mfa" {
  statement {
    effect = "Allow"

    actions = ["sts:AssumeRole"]

    principals {
      type        = "AWS"
      identifiers = var.trusted_role_arns
    }

    principals {
      type        = "Service"
      identifiers = var.trusted_role_services
    }

    condition {
      test     = "Bool"
      variable = "aws:MultiFactorAuthPresent"
      values   = ["true"]
    }

    condition {
      test     = "NumericLessThan"
      variable = "aws:MultiFactorAuthAge"
      values   = [var.mfa_age]
    }
  }
}

# Admin role
resource "aws_iam_role" "admin" {
  count = var.create_admin_role ? 1 : 0

  name                 = var.admin_role_name
  path                 = var.admin_role_path
  #max_session_duration = var.max_session_duration

  force_detach_policies = var.force_detach_policies
  permissions_boundary  = var.admin_role_permissions_boundary_arn

  assume_role_policy = var.admin_role_requires_mfa ? data.aws_iam_policy_document.assume_role_with_mfa.json : data.aws_iam_policy_document.assume_role.json

  tags = var.admin_role_tags
}

resource "aws_iam_role_policy_attachment" "admin" {
  count = var.create_admin_role ? length(var.admin_role_policy_arns) : 0

  role       = aws_iam_role.admin[0].name
  policy_arn = element(var.admin_role_policy_arns, count.index)
}