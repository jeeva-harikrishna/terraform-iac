import {
  to = aws_ecs_cluster.staging_cluster
  id = "staging-cluster"
}

import {
  to = aws_ecs_service.supplier_kpi_backend_v2
  id = "staging-cluster/supplier-kpi-backend-v2"
}

import {
  to = aws_ecs_service.findsuppliers_frontend
  id = "staging-cluster/findsuppliers-frontend"
}

import {
  to = aws_ecs_service.authserver_backend
  id = "staging-cluster/authserver-backend"
}

import {
  to = aws_ecs_service.vmi_service_frontend
  id = "staging-cluster/vmi-service-frontend"
}

import {
  to = aws_ecs_service.findsuppliers_backend
  id = "staging-cluster/findsuppliers-backend"
}

import {
  to = aws_ecs_service.asterdocs_frontend
  id = "staging-cluster/asterdocs-frontend"
}

import {
  to = aws_ecs_service.vmi_service_backend
  id = "staging-cluster/vmi-service-backend"
}

import {
  to = aws_ecs_service.supplier_kpi_frontend
  id = "staging-cluster/supplier-kpi-frontend"
}

import {
  to = aws_ecs_service.authserver_frontend
  id = "staging-cluster/authserver-frontend"
}

import {
  to = aws_ecs_service.aster_node
  id = "staging-cluster/aster-node"
}
