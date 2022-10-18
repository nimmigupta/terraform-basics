resource "aws_route53_record" "component" {
  zone_id = "Z04602961I29SHWLCRCU3"
  name    = "${var.COMPONENT}-dev.roboshop.internal"
  type    = "A"
  ttl     = 10
  records = [aws_eip.lb.public_ip]
}