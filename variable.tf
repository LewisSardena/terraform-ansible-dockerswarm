### variable.tf
variable "aws_region" {
  description = "AWS region on which we will deploy the swarm cluster"
    default = "eu-west-1"
}

variable "ami" {
  description = "RedHat Linux AMI"
  default = "ami-bb9a6bc2"
}

variable "instance_type" {
  description = "Instance type"
  default = "t2.micro"
}

variable "key_path" {
  description = "SSH Public Key path"
  default = "./docker-key.pem"
}

variable "key_name" {
  description = "Desired name of Keypair"
  default = "docker-key"
}

variable "bootstrap_path" {
  description = "Script to install Docker Engine"
  default = "install_docker_machine_compose.sh"
}
