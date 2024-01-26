variable "common_tags" {
  default = {
    Project     = "roboshop"
    Environment = "dev"
    Terraform   = "true"
  }
}

variable "tags" {
  default = {
    Component = "payment"
  }

}

variable "project_name" {
  default = "roboshop"
}
variable "environment" {
  default = "dev"

}

variable "zone_name" {
  default = "daws76.online"

}

variable "iam_instance_profile" {
    default = "ansible-role"
  
}