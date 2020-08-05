variable "simple-string" {
 	default = "simple"
}
variable "simple-number" {
	default = 100
}
variable "simple-boolean" {
	default = true
}
variable "simple-list" {
	default = [100,"Hello"]
}
variable "simple-map" {
	default = {
		tra = "shiva"
		sub = "Devops"
  }
}
variable "sample1-var" {}
resource "null_resource" "sample1" {
	provisioner "local-exec" {
                 command = "echo -e \" string = ${var.simple-string} \n number = ${var.simple-number} \n boolean = ${var.simple-boolean} \n list = ${var.simple-list[0]} \" "
        }
} 
