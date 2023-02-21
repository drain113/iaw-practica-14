# --------------- Instancia --------------- #

variable "ami_id" {
  description = "Identificador AMI"
  type        = string
  default     = "ami-0557a15b87f6559cf"
}

variable "region" {
  description = "Región instancia"
  type        = string
  default     = "us-east-1"
}

variable "instance_name" {
  description = "Nombre instancia"
  type        = string
  default     = "ec2_prac14_2"
}


variable "instance_type" {
  description = "Tipo de instancia"
  type        = string
  default     = "t2.medium"
}

variable "key_name" {
  description = "Nombre de la clave pública"
  type        = string
  default     = "vockey"
}

# --------------- --------- --------------- #

# ------------ Grupo Seguridad ------------ #



variable "sg_name" {
  description = "Grupo de seguridad"
  type        = string
  default     = "sg_prac14_2"
}

variable "sg_description" {
  description = "Descripción del grupo de seguridad"
  type        = string
  default     = "Grupo de seguridad para la instancia de la practica 14.2"
}

variable "allowed_ingress_ports" {
  description = "Puertos grupo de seguridad"
  type        = list(number)
  default     = [22, 80, 443, 8080]
}

# --------------- --------- --------------- #


