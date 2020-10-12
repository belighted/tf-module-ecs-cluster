output "cluster_arn" {
  value = aws_ecs_cluster.ecs-cluster.arn
}

output "cluster_id" {
  value = aws_ecs_cluster.ecs-cluster.id
}

output "namespace_id" {
  value = aws_service_discovery_private_dns_namespace.fargate_service.id
}

output "cw_log_group_name" {
  value = aws_cloudwatch_log_group.log-group.name
}