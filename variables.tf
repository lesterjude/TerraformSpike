
variable "VariableSample" {
  type        = string
  description = "This is a sample variable with a default value"
  default     = "Default Value If No Input"
}

variable "NoDefaultVar" {
  type        = number
  description = "Variable with no default value"
  validation {
    condition     = var.NoDefaultVar <= 10
    error_message = "Value must be less than or equal to ten."
  }
}