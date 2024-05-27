import boto3

# Lambda function to trigger ETL job
def lambda_handler(event, context):
    # Initialize Glue client
    glue = boto3.client('glue')

    # Trigger ETL job
    response = glue.start_job_run(JobName='your_etl_job_name')
    job_run_id = response['JobRunId']

    return {
        'statusCode': 200,
        'body': f'ETL Job started successfully. Job Run ID: {job_run_id}'
    }
