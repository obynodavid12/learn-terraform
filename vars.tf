variable "AWS_REGION" {
  default = "us-east-1"
}

variable "PATH_TO_PRIVATE_KEY" {
  default = "oct22"
}

variable "PATH_TO_PUBLIC_KEY" {
  default = "oct22.pub"
}

variable "AMIS" {
  type = map(string)
  default = {
    us-east-1 = "ami-0817d428a6fb68645"
    us-east-2 = "ami-0e82959d4ed12de3f "
    us-west-2 = "ami-07a29e5e945228fa1"
  }
}

