terraform {
  source = "../../../../..//module/gcp/vpc"
}

include {
  path   = find_in_parent_folders()
}

inputs = {
    auto_create_subnetworks = false
    subnet_region = ["asia-southeast2"]
    subnet_ip_cidr_range = ["192.168.0.0/24"]
}