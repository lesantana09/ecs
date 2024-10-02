variable "cluster_id" {
  description = "ID of the ECS cluster"
  type        = string
}

variable "vpc_id" {
  description = "ID of the VPC"
  type        = string
}

variable "app_name" {
  description = "Name of the application"
  type        = string
}

variable "container_image" {
  description = "Docker image for the application"
  type        = string
}

variable "container_port" {
  description = "Port exposed by the container"
  type        = number
  default     = 80
}

variable "desired_count" {
  description = "Desired number of tasks"
  type        = number
  default     = 2
}

variable "cpu" {
  description = "CPU units for the task"
  type        = string
  default     = "256"
}

variable "memory" {
  description = "Memory for the task"
  type        = string
  default     = "512"
}

variable "subnet_ids" {
  description = "IDs of the subnets where the service will be deployed"
  type        = list(string)
}

variable "task_execution_role_arn" {
  description = "ARN of the task execution role"
  type        = string
}

variable "ecs_tasks_security_group_id" {
  description = "ID of the ECS tasks security group"
  type        = string
}

variable "alb_security_group_id" {
  description = "ID of the ALB security group"
  type        = string
}

variable "lb_listener" {
  description = "The Load Balancer Listener"
  type        = any
}

variable "target_group_arn" {
  description = "ARN of the target group for the service"
  type        = string
}

variable "environment_variables" {
  description = "Environment variables for the container"
  type        = map(string)
  default     = {}
}