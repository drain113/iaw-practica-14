
# ----- PROVEEDOR AWS -------
provider "aws" {
  region = var.region
}
# ----------------------------

# ----- CREACIÓN SG -------

# Crear grupo de seguridad
resource "aws_security_group" "sg_prac14_1" {
  name        = var.sg_name
  description = var.sg_description
}

# Crear reglas de entrada
# Loop para recorrer la lista de puertos
resource "aws_security_group_rule" "ingress" {
  security_group_id = aws_security_group.sg_prac14_1.id
  type              = "ingress"

  count       = length(var.allowed_ingress_ports)
  from_port   = var.allowed_ingress_ports[count.index]
  to_port     = var.allowed_ingress_ports[count.index]
  protocol    = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
}

# Crear reglas de salida

resource "aws_security_group_rule" "egress" {
  security_group_id = aws_security_group.sg_prac14_1.id
  type              = "egress"

  from_port   = 0
  to_port     = 0
  protocol    = "-1"
  cidr_blocks = ["0.0.0.0/0"]
}

# -------------------------

# ----- CREACIÓN INSTANCIA -------

# Crear la instancia
resource "aws_instance" "ec2_prac14_1" {
  ami             = var.ami_id
  instance_type   = var.instance_type
  key_name        = var.key_name
  security_groups = [aws_security_group.sg_prac14_1.name]

  tags = {
    Name = var.instance_name
  }
}

# Crear IP Elástica y asignarla
resource "aws_eip" "ip_elastica" {
  instance = aws_instance.ec2_prac14_1.id
}
