variable "region" {
  description = "AWS region where resources are deployed"
  type        = string
  default     = "eu-west-2"
}

variable "environment" {
  description = "Environment name (dev, staging, prod)"
  type        = string
  default     = "dev"

  validation {
    condition     = contains(["dev", "staging", "prod"], var.environment)
    error_message = "Environment must be one of: dev, staging, prod."
  }
}

variable "project_name" {
  description = "netflix_clone"
  type        = string
  default     = "netflix_clone"
}

variable "owner" {
  description = "Owner of the resources"
  type        = string
  default     = "Folayemi_Emoruwa"
}

variable "vpc_cidr_block" {
  description = "This is the VPC cidr block for the netflix_clone project"
  type        = string
  default     = "10.0.0.0/16"

}



variable "instance_type" {
  type    = string
  default = "t2.medium"
}

variable "key_name" {
  description = "this is the keypair_created for this project"
  type        = string
  default     = "cba_keypair"
}