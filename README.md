# aws-healthcare-data-lake

This project sets up a secure, scalable data lake on AWS to centralize and analyze healthcare data from various sources.

Features
Storage: Amazon S3 for raw data storage.
Data Processing: AWS Glue for ETL jobs.
Data Warehousing: Amazon Redshift.
Visualization: Amazon QuickSight.
Security: IAM for access control, KMS for encryption.
Architecture

Prerequisites
AWS account with necessary permissions.
AWS CLI and Terraform installed locally.

Setup
Step 1: Clone the Repository
git clone https://github.com/yourusername/aws-healthcare-data-lake.git
cd aws-healthcare-data-lake

Step 2: Deploy Infrastructure
You can choose to deploy using CloudFormation or Terraform.

Using CloudFormation
aws cloudformation deploy --template-file src/infrastructure/cloudformation/s3_bucket.yaml --stack-name healthcare-data-lake-s3
aws cloudformation deploy --template-file src/infrastructure/cloudformation/redshift_cluster.yaml --stack-name healthcare-data-lake-redshift
aws cloudformation deploy --template-file src/infrastructure/cloudformation/iam_roles.yaml --stack-name healthcare-data-lake-iam

Using Terraform
cd src/infrastructure/terraform
terraform init
terraform apply

Step 3: Upload Initial Data
python src/scripts/data_upload.py

Step 4: Set Up ETL Jobs
Create and configure Glue jobs using the script in src/etl/glue_jobs/etl_job.py.
Deploy Lambda functions for automation using src/etl/lambda/lambda_function.py.

Step 5: Create QuickSight Dashboard
Import the dashboard configuration from src/analytics/quicksight_dashboard.json.

Usage
Use AWS Glue for regular ETL processes.
Monitor and analyze data using Amazon QuickSight.

Contribution
Fork the repository.
Create a new branch.
Make changes and commit them.
Open a pull request.
