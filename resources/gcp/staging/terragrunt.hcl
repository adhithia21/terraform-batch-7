inputs = {
  project = "striking-optics-378307"
  region = "asia-southeast2"
  zone = "asia-southeast2-a"
  credentials = "/home/adhithiair/bootcamp/kelas/kelas-7/terraform/terraform-3/google-credentials-staging.json"

  name = "${basename(get_terragrunt_dir())}"
  machine_type = "e2-micro"
  image = "ubuntu-os-cloud/ubuntu-2004-lts"
}