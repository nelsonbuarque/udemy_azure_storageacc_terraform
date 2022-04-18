variable "location" {
  description = "Variavel que indica a regiao onde os recursos vão ser criados"
  type = string
  default = "East US 2"
  #Sobrescrever = "export TF_VAR_location="Brazil South"
  #or
  #terraform plan -var='location-Brazil South'
  #or
  #Criar um terraform.tfvars e desclarar simples a variavel: location = "Brazil South"
}

variable "account_tier" {
  description = "Tier da Stirage Acc na Azure"
  type = string
  default = "Standard"
}

variable "account_replication_type" {
  description = "Tipo de replicação de dados da Storage Account"
  type = string
  default = "LRS"
  #Tornar o valor da variavel sencivel, não mostrar o valor dela no plan
  #sensitive = true
}