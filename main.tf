resource "aws_ecs_cluster" "ecs-cluster" {
  name = var.cluster_name
  capacity_providers = var.capacity_providers

  default_capacity_provider_strategy {
    capacity_provider = var.default_capacity_provider
    weight = var.capacity_provider_base
    base = var.capacity_provider_base
  }

  depends_on = [aws_cloudwatch_log_group.log-group]

}

resource "aws_service_discovery_private_dns_namespace" "fargate_service" {
  name        = "${var.environment}.${var.region}.${var.project_name}"
  description = "ECS Fargate service discovery managed by terraform"
  vpc         = var.vpc_id
}

resource "aws_cloudwatch_log_group" "log-group" {
  name = "ecs-${var.project_name}-${var.environment}"
  retention_in_days = var.cloudwatch_log_retention

  tags = {
    Environment = var.environment
    Project = var.project_name
  }
}