variable "vpc_id" {
  description = "ID of the VPC"
  type        = string
}

variable "subnet_ids" {
  description = "IDs of the subnets where the ALB will be deployed"
  type        = list(string)
}

variable "apps" {
  description = "List of applications to deploy"
  type = list(object({
    name           = string
    container_port = number
    path_pattern   = string
  }))
}