variable "instance_name" {
  description = "Name of the GCE instance"
  type        = string
}

variable "machine_type" {
  description = "The machine type for the GCE instance"
  type        = string
  default     = "n1-standard-1"
}

variable "zone" {
  description = "The GCP zone for the instance"
  type        = string
}

variable "network" {
  description = "The self-link of the network to attach the instance to"
  type        = string
}

variable "subnet" {
  description = "The self-link of the subnet to attach the instance to"
  type        = string
}

