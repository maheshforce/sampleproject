terraform {
  backend "s3" {
    bucket         = "mahesh7893"  # Replace with your bucket name
    key            = "vpc/terraform.tfstate" # Path to store the state file
    region         = "us-east-1"            # Replace with your bucket region
    dynamodb_table = "terraform-locks"      # Optional, for state locking
    encrypt        = true                   # Enable encryption for state file
  }
}