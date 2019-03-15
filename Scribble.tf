variable "users" {
  type    = "list"
  default = ["admin", "ubuntu"]
}

variable "hostnames" {
  default = {
    "0" = "example1.org"
    "1" = "example2.net"
  }
}

variable "TestMap" {
  #type = "map"

  default = {
    us-east-1 = "image-1234"
    us-west-2 = "image-4567"
  }
}

data "azurerm_virtual_network" "test" {
  name                = "Arun-2016-vnet"
  resource_group_name = "Arun-2016"
}

output "virtual_network_id" {
  value = "${data.azurerm_virtual_network.test.id}"
}

output "subnet" {
  value = "${data.azurerm_virtual_network.test.subnets}"
}

output "output1" {
    value = "${var.users[0]}"
} 

output "output2" {
    value = "${var.hostnames[1]}"
}

output "output3" {
  value = "${var.TestMap["us-east-1"]}"
}

output "output4" {
  value = "I \\\"love\\\" escaped quotes"
}

output "output5" {
  value = "${format("web-%04d", 5)}"
}


