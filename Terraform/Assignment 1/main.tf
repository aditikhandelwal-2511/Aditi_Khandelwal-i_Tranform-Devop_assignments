# Create a file called main.tf.
# Create a docker image resource and call it nginx_image.
# Set the name of the image to nginx:latest.
# Save and exit the file.

# Initialize Terraform.
# Plan the deploy and output a terraform plan called tf_image_plan.
# Apply the plan using tf_image_plan.

terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "2.12.2"
    }
  }
}

provider "docker" {
  host    = "npipe:////.//pipe//docker_engine"
}

# Pulls the image
resource "docker_image" "nginx_image" {
  name = "nginx:latest"
}


