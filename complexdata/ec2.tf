provider "aws" {
  region     = "us-east-2"
  profile  =  "configs" 
} 


resource "aws_instance" "webserver" {
   key_name = var.anyds.keymap.key1
   ami = var.amiid[0]
   instance_type = var.instancetype.instancetypemicro
   vpc_security_group_ids = [ var.anyds.sg]
   count = var.anyds.instcount
   
   disable_api_termination = var.anyds.apitterm[1]

   user_data = <<-EOF
    #!/bin/bash
    sudo apt update -y
    sudo apt install apache2 -y
    sudo systemctl start apache2
    sudo systemctl enable apache2
    EOF
  tags = {
    Name = "Webserver"
  }

}
