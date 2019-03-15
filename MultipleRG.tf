variable "hostnames1" {
  default = {
    "0" = "testrg1"
    "1" = "testrg2"
  }
}

resource "azurerm_resource_group" "webtest" {
  # Create one instance for each hostname
  count     = "${length(var.hostnames1)}"

  # Pass each instance its corresponding template_file
  name = "${var.hostnames1[count.index]}"
  location = "North Europe"
}