# ibm-tf-demo

Use this tutorial to create multizone clusters with IBM Cloud Kubernetes Service on IBM Cloud, and deploy your own set of compute hosts in the public cloud where you can run and manage highly available containerized apps.

In this repo, you create a standard classic IBM Cloud Kubernetes Service on IBM Cloud cluster with the following configuration:

The cluster is created in the us-south region.
The cluster is created with the default worker pool.
All worker nodes are connected to a private and public VLAN. These public and private VLANs assign public and private IP addresses to the worker nodes.
All worker nodes are created with a virtual worker node flavor on shared hardware. If you want to use a different worker node flavor, see the IBM Cloud Kubernetes Service on IBM Cloud documentation.

To allow access to your cluster from the internet and run public-facing app workloads in your cluster, the cluster is set up with both a public and a private service endpoint. For more information, about how network traffic flows when a public and a private service endpoint is enabled, see Worker-to-master and user-to-master communication: Service endpoints in IBM Cloud Kubernetes Service on IBM Cloud.

## Audience

This tutorial is intended for system administrators that want to learn how to create an IBM Cloud Kubernetes Service or Red Hat OpenShift on IBM Cloud cluster and spread this cluster across zones.

## Prerequisites

If you do not have one, create an IBM Cloud Pay-As-You-Go or Subscription IBM Cloud account.
Install the IBM Cloud command line and the IBM Cloud Kubernetes Service command line plug-in.
Follow the instructions to make sure that you are assigned the required permissions in Identity and Access Management (IAM) to create clusters and that your account is enabled for Virtual Routing and Forwarding (VRF).

## Clone the repo 

Install the Terraform on IBM Cloud command line and the IBM Cloud Provider plug-in.
If you do not have one, create an IBM Cloud API key.

## tfvars file
Create a variables file that is named terraform.tfvars and specify the IBM Cloud API key that you retrieved. In addition, you specify the region where you want your IBM Cloud resources to be created. If no region is specified, Terraform on IBM Cloud automatically creates your resources in the us-south region. Variables that are defined in the terraform.tfvars file are automatically loaded by Terraform when the IBM Cloud Provider plug-in is initialized and you can reference them in every Terraform configuration file that you use.

## note
Because the terraform.tfvars file contains confidential information, do not push this file to a version control system. This file is meant to be on your local system only.

# Example of terraform.tfvarsfile
```
ibmcloud_api_key = "<ibmcloud_api_key>"
region = "<region>"
```
## Initialize the Terraform on IBM Cloud CLI.
```
terraform init
```

## Create an Terraform on IBM Cloud execution plan. When you execute this command, Terraform on IBM Cloud validates the syntax of your configuration file and resource definitions against the specifications of the IBM Cloud Provider plug-in.

```
terraform plan
```

## Review the Terraform on IBM Cloud execution plan to verify that your cluster set up is correct.
## Create your multi zone cluster. 
## Note that the creation of your cluster takes a few minutes to complete.

```
terraform apply
```