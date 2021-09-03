variable "instance_type" {
  type        = string
  default     = "t2.micro"
  
}

variable http_port {
  type        = string
  default     = 80
}
variable from_source {
  type        = string
  default     = "0.0.0.0/0"
}

variable azs {
  type        = list
  default     = ["ap-south-1a","ap-south-1b"]
}
variable server_port {
  type        = string
  default     = 80
}

variable environment {
  type        = string
  default     = "Dev"
}
