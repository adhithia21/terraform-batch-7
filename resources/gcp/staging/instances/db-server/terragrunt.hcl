terraform {
  source = "../../../../..//module/gcp/instances"
}

include {
  path   = find_in_parent_folders()
}

inputs = {
  tags         = ["mariadb"]
  network      = "default"
  subnetwork   = "default"
  public_ip    = true
  machine_type = "e2-medium"
}