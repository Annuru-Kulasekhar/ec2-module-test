module "ec2" {
    source = "../terraform-aws-instance"
    project = var.project
    environment = var.environment
    ami_id = data.aws_ami.roboshop.id
    instance_type = "t3.small"
    sg_ids = var.sg_ids
    tags = {
        Name = "${var.project}-${var.environment}-${var.component}"
        Component = var.component
    }
}