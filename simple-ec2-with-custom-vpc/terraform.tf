terraform {
  backend "http" {

  }
}

provider "aws" {
  region = var.region
}
