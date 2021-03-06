variable "ibmcloud_api_key" {}
variable "region" {}
variable "cos_access_key" {}
variable "cos_secret_key" {}
provider "ibm" {
    ibmcloud_api_key   = var.ibmcloud_api_key
    region = var.region
    }

terraform {
 backend "s3" {
     region = "var.region"
     skip_region_validation = true
     skip_credentials_validation = true
     skip_metadata_api_check = true
     endpoint = "s3.us-south.cloud-object-storage.appdomain.cloud"
     access_key = "var.cos_access_key"
     secret_key = "var.cos_secret_key"   
  }
 }