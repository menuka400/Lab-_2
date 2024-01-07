terraform {
  backend "s3" {
    bucket = "menuka-tfstate-bkt" #change this
    key    = "terraform.tfstate"
    region = "eu-north-1"
    #dynamodb_table = "my-lock-table" # optional (Only if you created the DynamoDB table in step 4) 
  }
}

provider "aws" {
  region = "eu-north-1"
  # Credentials can be specified here or via environment variables
}
