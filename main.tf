resource "aws_organizations_organization" "name" {
  
}

module "aws_org" {
    source = "./modules"
    count = length(var.org_structure)
    org_unit = var.org_structure[count.index].org_units.name
    accounts = var.org_structure[count.index].org_units.accounts
    root_account_id = aws_organizations_organization.name.roots[0].id
}