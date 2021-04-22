
variable "VariableSample" {
  type        = string
  description = "This is a sample variable with a default value"
  default     = "Default Value If No Input"
}

/*variable "NoDefaultVar" {
  type        = number
  description = "Variable with no default value"
  validation {
    condition     = var.NoDefaultVar <= 10
    error_message = "Value must be less than or equal to ten."
  }
}

variable "Password" {
  type        = string
  description = "Input password"
  sensitive   = true
}
*/

variable "region" {
  type    = string
  default = "eu-west-2"
}

variable "availability-zones" {
  type        = list(string)
  description = "List of allowed AZs"
  default     = ["us-west-2"]
}

variable "complex-list" {
  type = list(object({
    var1 = number
    var2 = number
    var3 = string
  }))
  default = [{
    var1 = 1
    var2 = 2
    var3 = "ok"
  }]
}

variable "external_port" {
  type    = number
  default = 8080
  validation {
    condition     = can(regex("8080|80", var.external_port))
    error_message = "Port values can only be 8080 or 80."
  }
}
