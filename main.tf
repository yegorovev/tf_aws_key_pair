resource "tls_private_key" "pk" {
  algorithm = var.algorithm
  rsa_bits  = var.rsa_bits
}

resource "aws_key_pair" "kp" {
  key_name_prefix = var.key_name_prefix
  public_key      = tls_private_key.pk.public_key_openssh
  tags            = var.tags

  provisioner "local-exec" {
    command = "echo '${tls_private_key.pk.private_key_pem}' > ${var.local_path}/${aws_key_pair.kp.key_name}.pem"
  }
}
