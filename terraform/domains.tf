resource "vultr_dns_domain" "cdrlprojects" {
  domain = "cdrlprojects.org"
}

resource "vultr_dns_domain" "cdrlut" {
  domain = "cdrl-ut.org"
}

resource "vultr_dns_record" "bastion_ip_record" {
  domain = vultr_dns_domain.cdrlprojects.id
  name   = "autodock"
  data   = vultr_instance.autodock.main_ip
  type   = "A"
}
