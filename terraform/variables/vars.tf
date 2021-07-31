variable "sample" {
  default = "Hello World"
}

output "sample" {
  value = var.sample
}

output "sample1" {
  value = "${var.sample} -From Terraform"
}

variable "sample2" {}

output "sample2" {
  value = var.sample2
}

