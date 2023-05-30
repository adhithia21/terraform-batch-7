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

variable "auto_create_subnetworks" {
  type = bool
  default = false
}

variable "subnet_region" {
  type = list
}

variable "subnet_ip_cidr_range" {
  type = list
}