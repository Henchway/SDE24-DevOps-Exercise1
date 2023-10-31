variable "aws_credentials" {
  type = object({
    access_key = string
    secret_key = string
  })
}

variable "resource_name" {
  default = "scheibelhofer-devops"
}
