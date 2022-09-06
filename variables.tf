variable "org_full" {
    type = any
    default = ""
  
}

variable "close_on_deletion" {
    type = bool
    description = "If account will deleted or just detached"
    default = false
}