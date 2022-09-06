output "account_arns" {
    value = aws_organizations_account.organizational_units_accounts.*.arn
}

#tbd