variable "org_name" {
  type        = string
  default     = "organization"
  description = "Name of global org scope."
}

variable "org_description" {
  type        = string
  default     = "Organization scope"
  description = "Organization scope description."
}

variable "project_name" {
  type        = string
  default     = "project"
  description = "Name of project scope."
}

variable "project_description" {
  type        = string
  default     = "My first project."
  description = "Project scope description."
}

variable "login_account_name" {
  type        = string
  default     = "myuser"
  description = "Name of login account."
}
variable "login_account_description" {
  type        = string
  default     = "User account for my user"
  description = "Description of Login account"
}

variable "login_account_password" {
  type        = string
  description = "Password"
}

