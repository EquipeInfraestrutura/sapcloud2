#imagens das máquinas do client e sql server

variable "amiclient_id" {
  type        = string
  default     = "ami-0ee1b9f15bec6dde7"
  description = "ami_id"
}

variable "amisql_id" {
  type        = string
  default     = "ami-02cb958d43e04f92d"
  description = "ami_id"
}

variable "instance_count" {
  default = "1"
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

variable "vpc_id" {
  type        = string
  default     = "vpc-00574fa66aed1443e"
  description = "vpc_projetosap"
}

variable "sg_public" {
  type        = list
  default     = ["sg-05cafc51176c1ad09"]
  description = "sg_publico"
}

variable "public_subnet" {
  type        = list
  default     = ["subnet-0e3df6d4e1b795711"]
}

variable "sg_private" {
  type        = list
  default     = ["sg-04240bb8a2e435f6b"]
  description = "sg_privado"
}

variable "private_subnet" {
  type        = list
  default     = ["subnet-055b6afe7f727db03"]
}


