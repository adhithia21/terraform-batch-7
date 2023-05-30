variable "project" {
  type = string
}

variable "region" {
  type = string
}

variable "zone" {
  type = string
}

variable "credentials" {
  type = string
}

variable "name" {
  type = string
}

variable "machine_type" {
  type = string
}

variable "tags" {
  type = list
  default = []
}

variable "image" {
  type = string
  default = "debian-cloud/debian-11"
}

variable "network" {
  type = string
}

variable "subnetwork" {
  type = string
}

variable "public_ip" {
  type = bool
  default = true
}

variable "metadata_startup_script" {
  type = string
  default = ""
}