provider "aws" {
  region = "us-east-1"  # Specify your desired region
}

resource "aws_lightsail_instance" "my_instance" {
  name              = "my-node-app-instance"
  availability_zone = "us-east-1a"

  bundle_id    = "nano_1_0"  # You can choose a suitable instance size
  blueprint_id = "nodejs"     # Base OS with Node.js installed

  tags = {
    Name = "MyNodeApp"
  }
}
