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



variable "String" {
  default = "Hello World"
}

variable "number" {
  default = 100
}

variable "boolean" {
  default = false
}

output "vars" {
  value = "${var.String} -for string, ${var.number} -for number,${var.boolean} -for string"
}
