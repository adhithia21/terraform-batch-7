remote_state {
  backend = "gcs"
  config = {
    bucket         = "terraform-batch-7"
    prefix    = "${path_relative_to_include()}/terraform.tfstate"
    credentials = "/home/adhithiair/gcp.json"
  }
}

inputs = {
  project = "dulcet-abacus-380303"
  region = "asia-southeast2"
  zone = "asia-southeast2-a"
  credentials = "/home/adhithiair/gcp.json"

  name = "${basename(get_terragrunt_dir())}"
  machine_type = "e2-micro"
  image = "ubuntu-os-cloud/ubuntu-2004-lts"
}