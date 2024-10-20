variable "aws_region" {
    description = "The AWS region where resources will be provisioned."
    default = "us-east-1"
}

variable "sqs_request" {
    description = "The name of the SQS request queue."
    default = "1229112458-req-queue"
}

variable "sqs_response" {
    description = "The name of the SQS response queue."
    default = "1229112458-resp-queue"
}

variable "s3_input" {
    description = "The name of the S3 input bucket."
    default = "1229112458-in-bucket"
}

variable "s3_output" {
    description = "The name of the S3 output bucket."
    default = "1229112458-out-bucket"
}

variable "ami_id" {
    description = "The ami id to use for web and app servers."
    default = "ami-0a0e5d9c7acc336f1"
}

variable "instance_type" {
    description = "The instance type to use for web and app servers."
    default = "t2.micro"
}

variable "security_group_list" {
    description = "A list of security group IDs to associate with web and app servers."
    default = ["Open-SG"]
}

variable "iam_profile" {
    description = "The IAM profile to associate with web and app servers."
    default = "ec2-full-access-role"
}

variable "server_key" {
    description = "The key pair to associate with web and app servers."
    default = "cse546temp"
}

variable "local_key_path" {
    description = "The local path for key pair to enable remote-exec."
    default = "../../cse546temp.pem"
}

variable "web_server" {
    description = "The name of the web server instance."
    default = "web-instance"
}

variable "web_server_template" {
    description = "The user data template for the web server instance."
    default = "web_instance_template.tpl"
}

variable "app_server" {
    description = "The name of the app server instance."
    default = "app-instance"
}

variable "app_server_template" {
    description = "The user data template for the app server instance."
    default = "app_instance_template.tpl"
}

variable "app_server_image" {
    description = "The ami created from the app server instance."
    default = "app_instance_ami"
}

variable "app_server_copies" {
    description = "The name of the app server copy instances."
    default = "app-tier-instance-"
}

variable "max_app_servers" {
    description = "The maximum number of application tier instances allowed."
    default = 20
}