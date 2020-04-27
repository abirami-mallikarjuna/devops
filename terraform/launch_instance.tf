provider "aws" {
        profile = "default"
        access_key = "AKIASKBQ2OCGO6STI7JC"
        secret_key  = "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"
        region = "ap-southeast-1"
}

resource "aws_instance" "media" {
        ami = "ami-a59b49c6"
        instance_type = "t2.micro"
        security_groups= ["launch-wizard-3"]
        user_data = <<-EOF
                #! /bin/bash
                sudo yum install git -y
                sudo yum install ansible -y > /tmp/logs
                ansible-pull -i localhost -U https://github.com/abirami-mallikarjuna/devops.git terraform/docker.yml   | tee -a /tmp/logs             
                EOF
}



