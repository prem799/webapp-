variable "aws_region" {
  description = "AWS region where resources will be created"
  type        = string
  default     = "us-east-1"
}

variable "project_name" {
  description = "Name of the project"
  type        = string
  default     = "hello-app"
}

variable "env" {
  description = "Environment name"
  type        = string
  default     = "dev"
}
