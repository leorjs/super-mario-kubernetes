variable "aws_region" {
  description = "The AWS region to deploy resources."
  default     = "ap-south-1"
}

variable "instance_types" {
  description = "Instance types for the node group."
  type        = list(string)
  default     = ["t2.medium"]
}

variable "scaling_config" {
  description = "Scaling configuration for the node group."
  type = object({
    desired_size = number
    max_size     = number
    min_size     = number
  })
  default = {
    desired_size = 1
    max_size     = 2
    min_size     = 1
  }
}

variable "s3_bucket_name" {
  description = "The S3 bucket name for storing Terraform state."
  default     = "mario12bucket"
}

variable "s3_key" {
  description = "The S3 bucket key for the Terraform state file."
  default     = "EKS/terraform.tfstate"
}
