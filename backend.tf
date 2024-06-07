terraform {
  backend "s3" {
    profile        = "sbox-user-backend" # Use a profile that hass access to s3 and dynamodb
    bucket         = "sbox-remote-backend" # This bucket already exists as was created in the console
    key            = "sbox-remote-backend/tfstate" # The key where i will be storing the terraform state file
    dynamodb_table = "my_lock_table" # For this deployment i am using a dynamodb table that i already created
    region         = "us-east-1"
  }
}