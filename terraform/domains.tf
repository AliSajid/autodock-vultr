data "aws_route53_zone" "cdrlut" {
  name = "cdrl-ut.org."
}

resource "aws_route53_record" "autodock_ip_record" {
  zone_id = data.aws_route53_zone.cdrlut.id
  name    = "autodock.cdrl-ut.org"
  ttl     = "300"
  records = [vultr_instance.autodock.main_ip]
  type    = "A"
}
