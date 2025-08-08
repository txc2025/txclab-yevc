
data "aws_ami" "amazon_linux" {
  most_recent = true
  owners = ["amazon"]
  filter {
    name = "name"

    values = [
      "amzn*-ami-hvm-*-x86_64-gp*",
    ]
  }
}

locals {
  common_tags = {
    Name = var.repo_name
    Turbo_Team = "AppInfra_Integrations"
    Turbo_Owner = "IT-Automation-enablement-dg@ibm.com"
    Turbo_Use = "Education"
    Turbo_Comment = "Lab session 2672 sample VM"
    Turbo_Park = "True"
  }
  lifecycle_tags = {
    createdDate = local.createdDate
    validThrough = local.validThrough
  }
}

data "turbonomic_cloud_entity_recommendation" "example" {
  entity_name  = var.repo_name
  entity_type  = "VirtualMachine"
  default_size = "t2.nano"
}

resource "aws_instance" "lab1-vm1" {
  ami           = data.aws_ami.amazon_linux.id
  instance_type = data.turbonomic_cloud_entity_recommendation.example.new_instance_type
  tags          = merge(local.common_tags, local.lifecycle_tags)

  lifecycle {
    ignore_changes = [tags, tags_all]
  }
}

