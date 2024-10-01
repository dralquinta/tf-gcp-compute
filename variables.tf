variable "instance_name" {
  description = "Name of the compute instance"
  type        = string
  default     = "my-instance"
}

variable "machine_type" {
  description = "Machine type for the instance"
  type        = string
  default     = "e2-medium"
}

variable "zone" {
  description = "Zone where the instance will be created"
  type        = string
  default     = "us-central1-a"
}

variable "image" {
  description = "Image to use for the boot disk"
  type        = string
  default     = "debian-cloud/debian-11"
}

variable "network_name" {
  description = "Name of the network to attach the instance to"
  type        = string
  default     = "default" 
}