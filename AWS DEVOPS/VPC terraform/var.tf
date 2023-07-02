# defining cidr block for vpc

variable "vpc_cidr" {
    default = "10.0.0.0/16"
  
}


variable "websub_1" {
    default = "10.0.0.0/18"
  
}


variable "websub_2" {
    default = "10.0.128.0/18"
  
}


variable "appsub_1" {
    default = "10.0.96.0/20"
  
}


variable "appsub_2" {
    default = "10.0.112.0/20"
  
}

variable "dbsub_1" {
    default = "10.0.80.0/21"
  
}

variable "dbsub_2" {
    default = "10.0.88.0/21"
  
}

