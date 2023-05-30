terraform {
  source = "../../../../..//module/gcp/instances"
}

include {
  path   = find_in_parent_folders()
}

inputs = {
  tags         = ["dekra"]
  network      = "default"
  subnetwork   = "default"
  public_ip    = true
}