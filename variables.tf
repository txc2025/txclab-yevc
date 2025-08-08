variable "region" {
 type        = string
 description = "AWS region"
 default     = "us-east-1"
}
 
variable "type" {
 type        = string
 description = "Instance type for the EC2 instance"
 default     = "t2.nano"
}

variable "repo_name" {
 type        = string
 description = "Unique identifier for a each student session and workspace"
 default     = "{{REPO_NAME}}"
} 
