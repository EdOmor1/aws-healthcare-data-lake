import boto3

def upload_data_to_s3(file_path, bucket_name, object_key):
    s3 = boto3.client('s3')
    s3.upload_file(file_path, bucket_name, object_key)

if __name__ == "__main__":
    file_path = "/path/to/your/data/file.csv"
    bucket_name = "your-bucket-name"
    object_key = "data/file.csv"
    upload_data_to_s3(file_path, bucket_name, object_key)
