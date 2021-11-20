resource "vultr_instance" "autodock" {
  plan             = "vhf-2c-2gb"
  region           = "ewr"
  os_id            = "452"
  label            = "autodock"
  tag              = "staging"
  hostname         = "autodock.cdrlprojects.org"
  activation_email = false
  ssh_key_ids      = [vultr_ssh_key.asimami_vultr_key.id]
  user_data        = file("${path.module}/user-data.yml")
}
