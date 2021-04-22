provider "aws" {
  #region = "us-east-1"
  region = var.region
  /*access_key = "value"
  secret_key = "value"
  assume_role {
    role_arn = "arn:aws:iam::ACCOUNT_ID:role/ROLE_NAME"
    session_name = "value"
    external_id = "value"
  }*/
}

module "vpc" {
  source = "./modules/vpc"
  region = var.region
}

resource "aws_instance" "my-instance" {
  ami           = module.vpc.ami_id
  subnet_id     = module.vpc.subnet_id
  instance_type = "t3.micro"
}

/*
resource "aws_instance" "ec2instance-ni" {
  ami           = "ami-0742b4e673072066f"
  instance_type = "t2.micro"
  
  tags = {
    "name" = "first-ec2-from-tf"
    #"ec2-id" = "${self.id}"
  }

  provisioner "local-exec" {
    #local-exec runs on local machine
    command = "echo 'created - ${self.id}' > status.txt"
  }

  provisioner "remote-exec" {
    inline = [
      "sudo yum -y install httpd && sudo systemctl start httpd",
      "echo '<h1><center>Deployed using Terraform</center></h1>' > index.html",
      "sudo mv index.html /var/www/html/"
    ]
    connection {
      type        = "ssh"
      user        = "ec2-user"
      private_key = file("~/.ssh/id_rsa")
      host        = self.public_ip
    }
  }

  # provisioner "remote-exec" {
  #   #runs on the ec2 instance : 
  #   inline = ["sudo yum -y install httpd"]

  #   connection {
  #     type        = "ssh"
  #     user        = "ec2-user"
  #     private_key = file("~/.ssh/id_rsa")
  #     host        = self.public_ip
  #   }
  # }
}

#null resource provisioner snippet

resource "null_resource" "provisioner" {
  provisioner "local-exec" {
    command = "echo 'created' > status.txt"
  }

  provisioner "local-exec" {
    when    = destroy #when parameter is used to tell that this is a destroy provisioner. 
    command = "echo 'destroyed' > status.txt"
  }
}
*/