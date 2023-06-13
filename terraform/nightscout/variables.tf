variable "domain" {
  type        = string
  description = "The domain name used for this instance of nightscout, and registered via AWS. This variable is required."
}

variable "instance_type" {
  type        = string
  description = "(Optional) The default instance type used for your installation of Nightscout. Defaults to t3.nano, the smallest instance."
}

variable "features" {
  type        = string
  description = "A space-separated list of features to enable in Nightscout. Passed-in to the module ideally, but can be set manually with a space-separated list."
}

variable "api_key" {
  type        = string
  description = "Nightscout API key. Passed-in to the module ideally, but can be set manually."
}

variable "security_groups" {
  type        = list(string)
  description = "A list of security group IDs"
}

variable "subnet" {
  type = string
}

variable "launch_key" {
  type        = string
  description = "The launch key used for the instance and for ssh connections."
}

variable "ami" {
  type        = string
  description = "The AMI used for the EC2 instance start"
}

variable "private_launch_key" {
  type        = string
  sensitive   = true
  description = "The private openSSH key used to launch an instance."
}

variable "access_key" {
  type        = string
  sensitive   = true
  description = "AWS access key id pass-through"
}

variable "secret_key" {
  type        = string
  sensitive   = true
  description = "AWS secret key pass-through"
}

variable "region" {
  type        = string
  description = "The selected AWS region"

}

variable "storage" {
  type        = number
  description = "The amount of storage for your Nightscout data in GB."
}

variable "nightscout_image" {
  type        = string
  description = "The Docker image used for Nightscout. Offers the opportunity to customize which image is being run. Defaults to the official Nightscout image."
}

variable "nightscout_image_tag" {
  type        = string
  description = "The tag used to specify which image version of nightscout is being run. Defaults to latest."
}

variable "mongo_image" {
  type        = string
  description = "The Docker image used for Mongo. Offers the opportunity to customize which mongo docker image is being run. Defaults to the offical mongo docker image."
}

variable "mongo_image_tag" {
  type        = string
  description = "The tag used to specify which image version of mongo is being run. Defaults to 4.4."
}