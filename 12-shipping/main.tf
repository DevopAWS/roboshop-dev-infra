module "shipping" {
    source = "../../terraform-roboshop-app"
    vpc_id = data.aws_ssm_parameter.vpc_id.value
    component_sg_id = data.aws_ssm_parameter.shipping_sg_id.value
    private_subnet_ids = element(split(",", data.aws_ssm_parameter.private_subnet_ids.value), 0)
    iam_instance_profile = var.iam_instance_profile
    common_tags = var.common_tags
    project_name = var.project_name
    environment = var.environment
    tags = var.tags
    zone_name = var.zone_name
    app_alb_listener_arn = data.aws_ssm_parameter.app_alb_listener_arn.value
    rule_priority = 30


  
}