locals {
  org_better = lookup(var.org_full, "org_struct",[])
}

resource "aws_organizations_organization" "name" {
  
}

module "blah" {
    source = "./modules"
    count = length(local.org_better)
    org_unit = local.org_better[count.index].org_units.name
    accounts = local.org_better[count.index].org_units.accounts
    root_account_id = aws_organizations_organization.name.roots[0].id
}