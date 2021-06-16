# Create a new Terraform file called main.tf.
# Create three variables.
# The first variable, called image_name, needs to be set to ghost:latest.
# The second variable is called container_name with a default of ghost_blog.
# The final variable is called ext_port and set the default to port 80.

# Create a Docker image resource called ghost_image that uses the image_name variable.

# Create a Docker container resource called ghost_container.
# The name will use the container_name variable.
# The image will use the ghost_image resource.
# The internal port will be set to 2368.
# The external port will use ext_port variable.

# Initialize Terraform.

# Create a Terraform plan that uses the following variables:

# container_name = ghost_blog1
# image_name = ghost:alpine
# ext_port = 8080
# Output the plan to a file called tfplan.

# Then apply the plan using tfplan and make sure that the apply doesn’t prompt for input.

# Download the latest Ghost Image
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


resource "docker_image" "image_id" {
  name = "${var.image_name, var.env}"
}

# Start the Container
resource "docker_container" "ghost_container" {
  name  = "${var.container_name, var.env}"
  image = "${docker_image.image_id.latest}"
  ports {
    internal = "${var.int_port}"
    external = "${var.ext_port, var.env}"
  }
}
