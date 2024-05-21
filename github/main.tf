
terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 6.0"
    }
  }
}

provider "github" {
  token = "<add_github_token>"
}

resource "github_repository" "example" {
  name        = "terraform-zero-to-hero"
  description = "Creating repository form terraform"

  visibility = "public"

}

