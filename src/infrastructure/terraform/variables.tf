variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "bucket_name" {
  description = "Name of the S3 bucket"
  type        = string
}

variable "cluster_identifier" {
  description = "Identifier for the Redshift cluster"
  type        = string
}

variable "node_type" {
  description = "Type of Redshift cluster node"
  type        = string
}

variable "cluster_type" {
  description = "Type of Redshift cluster"
  type        = string
}

variable "number_of_nodes" {
  description = "Number of Redshift cluster nodes"
  type        = number
}

variable "db_name" {
  description = "Name of the database"
  type        = string
}

variable "master_username" {
  description = "Master username for the Redshift cluster"
  type        = string
}

variable "master_password" {
  description = "Master password for the Redshift cluster"
  type        = string
}

variable "iam_role" {
  description = "IAM role for Redshift cluster"
  type        = string
}

variable "publicly_accessible" {
  description = "Whether Redshift cluster is publicly accessible"
  type        = bool
}
