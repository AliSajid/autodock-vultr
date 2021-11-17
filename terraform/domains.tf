resource "vultr_dns_domain" "cdrlprojects" {
  domain = "cdrlprojects.org"
}

resource "vultr_dns_domain" "cdrlut" {
  domain = "cdrl-ut.org"
}

resource "vultr_dns_record" "bastion_ip_record" {
  domain = vultr_dns_domain.cdrlprojects.id
  name   = "bastion"
  data   = vultr_instance.bastion.main_ip
  type   = "A"
}
