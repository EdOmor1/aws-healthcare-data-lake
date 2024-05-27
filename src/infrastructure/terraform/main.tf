provider "aws" {
  region = var.region
}

resource "aws_s3_bucket" "data_lake_bucket" {
  bucket = var.bucket_name
  acl    = "private"
}

resource "aws_redshift_cluster" "redshift_cluster" {
  cluster_identifier      = var.cluster_identifier
  node_type               = var.node_type
  cluster_type            = var.cluster_type
  number_of_nodes         = var.number_of_nodes
  db_name                 = var.db_name
  master_username         = var.master_username
  master_password         = var.master_password
  iam_roles               = [var.iam_role]
  publicly_accessible     = var.publicly_accessible
}
