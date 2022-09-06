variable "org_unit" {
    type = string
    description = "Organizational unti to be created"
}

variable "accounts" {
    type = list
    description = "Accounts to be created"
}

variable "root_account_id" {
    type = string
    description = "ID of the root account"
}
variable "close_on_deletion" {
    type = bool
    description = "If account will deleted or just detached"
    default = false
}