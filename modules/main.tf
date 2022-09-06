resource "aws_organizations_organizational_unit" "this" {
  name      = var.org_unit
  parent_id = var.root_account_id
}

resource "aws_organizations_account" "organizational_units_accounts" {
  count = length(var.accounts)
  name                       = var.accounts[count.index].acc_name
  email                      = var.accounts[count.index].acc_email
  parent_id                  = aws_organizations_organizational_unit.this.id
  close_on_deletion          = var.close_on_deletion
}


