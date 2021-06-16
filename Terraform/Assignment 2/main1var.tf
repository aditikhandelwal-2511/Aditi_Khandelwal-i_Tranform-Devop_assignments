# # Define variables variable "environment" {  description = "env: production or development" }

#  variable "image_name" {
#  type = "map"  
#  description = "Image name for container" 
#   default = { 
#          prod = "ghost:alpine"  
#            dev = "ghost:default" 
#             } 
#   }

#  variable "container_name" {
#        type = "map"  
#        description = "Name of the container"  
#        default = { 
#               prod = "container_production"  
#                 dev = "container_development" 
#                  }
#         }

#  variable "internal_port" {  
#      description = "Internal port for container"
#        default = "2368"
#         }

#  variable "external_port" { 
#       type = "map"  
#       description = "External port for container"  
#       default {   
#            prod = "80"  
#              dev = "8081"  }

#        }

#Define variables
variable "image_name" {
  description = "Image for container."
  default     = "ghost:latest"
}

variable "container_name" {
  description = "Name of the container."
  default     = "blog"
}

variable "ext_port" {
  description = "External port for container."
  default     = "80"
}