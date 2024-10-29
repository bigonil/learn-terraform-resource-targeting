# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

terraform {
  # Uncomment this block to use Terraform Cloud for this tutorial
  cloud {
      organization = "lb-terraform-prd"
      workspaces {
        name = "learn-terraform-resource-targeting"
        project = "learn-terraform-prj"
      }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.73.0"
    }

    random = {
      source  = "hashicorp/random"
      version = ">= 3.6.0"
    }
  }

  required_version = "~> 1.2"
}

