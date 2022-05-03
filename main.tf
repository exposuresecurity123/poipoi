terraform {
  required_providers {
    null = {
      source = "hashicorp/null"
      version = "3.1.1"
    }
  }
}

provider "null" {
  # Configuration options
}

resource "null_resource" "resourceHello" {
  #count = 20000
  provisioner "local-exec" {
    command = "echo $ENV"
    environment = {
      ENV = "Hello World!"
    }
  }
}
