variable "vpc_name" {
  description = "The name of the VPC"
  type        = string
  default     = "main"
}

variable "vpc_cidr_block" {
  description = "The CIDR block for the VPC"
  type        = string
  default     = "10.0.0/16"
}