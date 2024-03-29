## key = value, is there in any block like instance_type = "t3.micro" in terraform
# conditions in terraform is all about picking the value.

## key = condition -> True -> Pick some value
#                  -> False -> Pick some value

# condition ? true_val : false_val
# key = 1 == 1 ? One: Other

variable "instance_type" {
  default = null
}

variable "create_instance" {
  default = false
}

resource "aws_instance" "test" {
  count         = var.create_instance ? 1 : 0
  ami           = "ami-03265a0778a880afb"
  instance_type = var.instance_type == null ? "t3.micro" : var.instance_type
}