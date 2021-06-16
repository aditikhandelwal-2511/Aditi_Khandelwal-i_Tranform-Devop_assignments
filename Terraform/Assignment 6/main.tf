# Using Terraform to Create a RandomID and S3 Buckets

# Create the Main file:-
# Create the main.tf Terraform file.
# Add a provider, aws.
# Set the region to use a variable called aws_region.
# Add a random_id resource and name it tf_bucket_id.
# Set the byte_length to 2.

# Add a resource, aws_s3_bucket, and name it tf_code.
# The bucket name will be set using a variable called project_name, followed by a -, and will use the dec attribute from tf_bucket_id.
# Set the acl to private.
# Set force_destroy to true.
# Create a tag with a name to tf_bucket.

# Create the Variables File:-
# Create the variables.tf Terraform file.
# Add a variable called aws_region.
# Set the default to us-east-1. Add a variable called project_name.
# Set the default to la-terraform.

# Create the outputs file:-
# Create the outputs.tf Terraform file.
# Add a output called bucketname.
# The value should be set to id, coming from tf_code.

# Deploy the infrastructure:-
# Initialize Terraform.
# Validate the files.
# Deploy the S3 bucket.



provider "aws" {
  region = "us-east-1"
  access_key = "AKIA6BGHQPWCLBY2USG4"
  secret_key = "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"
}

resource "random_id" "tf_bucket_id" {
    byte_length = 2
}

resource "aws_s3_bucket" "tf_code" {
    
    bucket = "${var.project_name}-${random_id.tf_bucket_id.dec}"
    acl = "private"
    force_destroy = true
 
    tags = {
         Name = "tf_bucket"
          }
}