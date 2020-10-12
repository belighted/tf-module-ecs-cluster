variable "cluster_name" {}

variable "default_capacity_provider" {
  default = "FARGATE_SPOT"
}

variable "capacity_provider_weight" {
  default = 50
}
variable "capacity_provider_base" {
  default = 1
}

variable "capacity_providers" {
  default = ["FARGATE_SPOT","FARGATE"]
}

variable "environment" {}

variable "project_name" {}

variable "region" {}

variable "vpc_id" {}

variable "cloudwatch_log_retention" {
  default = 90
}