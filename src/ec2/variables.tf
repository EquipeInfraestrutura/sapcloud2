variable "instance_count" {
  default = "2"
  type    = string
}

variable "instance_type_client" {
   default     = "m5.xlarge"
   type        = string
   description = "tipo da instancia"
}

variable "instance_type_sql" {
   default     = "m5.xlarge"
   type        = string
   description = "tipo da instancia"
}

variable key_pair {
  type        = string
  default     = "Key_projetos"
  description = "Key pair para logar na máquina"
}

variable volume_size {
  type        = string
  default     = "300"
  description = "Tamanho do disco"
}

variable "vpc_id" {}

variable "sg_public" {}

variable "public_subnet" {
  type        = string
  default     = "172.36.0.0/24"
}

variable "sg_private" {}

variable "private_subnet" {
  type        = string
  default     = "172.36.1.0/24"
}


