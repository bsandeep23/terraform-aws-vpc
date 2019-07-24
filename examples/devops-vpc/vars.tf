//  The region we will deploy our resources into.
variable "region" {
  description = "Region to deploy the cluster into"
  default     = "ap-northeast-1"
}

variable "common_tags" {
  description = "Common tags to be added on all resources"
  default     = { "Owner" = "devops", "Component" = "network", "Stage" = "dev" }
}

variable "owner" {
  description = "Owner of the infra"
  default     = "vd.devops"
}

variable "component" {
  description = "Component name"
  default     = "devops"
}

variable "stack" {
  description = "Sub Component name"
  default     = "network"
}

variable "stage" {
  description = "stage "
  default     = "dev"
}

variable "vpc_cidr" {
  description = "The CIDR block for the VPC, e.g: 10.0.0.0/16"
  default     = "172.21.0.0/16"
}

variable "azs" {
  description = "List of azs"
  default     = ["ap-northeast-1a", "ap-northeast-1c", "ap-northeast-1d"]
}

variable "public_subnets" {
  description = "list of public subnets to be created"
  default     = ["172.21.0.0/24", "172.21.1.0/24", "172.21.2.0/24"]
}

variable "private_subnets" {
  description = "list of private subnets to be created"
  default     = ["172.21.3.0/24", "172.21.4.0/24", "172.21.5.0/24"]
}

variable "map_public_ip_on_launch" {
  default     = "true"
  description = "Map public ip on launch in subnet"
}

variable "devteams_ip_list" {
  description = "development centre ip ranges"
  default = ["103.81.106.248/30",
    "210.94.41.88/30",
  ]
}

variable "devteams_sg_rules" {
  description = "SG rules for dev teams"
  default = [
    { "description" = "Allow http traffic", "type" = "ingress", "from_port" = "80", "to_port" = "80", "protocol" = "tcp" },
    { "description" = "Allow http traffic", "type" = "ingress", "from_port" = "8080", "to_port" = "8080", "protocol" = "tcp" },
    { "description" = "Allow https traffic", "type" = "ingress", "from_port" = "443", "to_port" = "443", "protocol" = "tcp" },
    { "description" = "Allow https traffic", "type" = "ingress", "from_port" = "8443", "to_port" = "8443", "protocol" = "tcp" },
    { "description" = "Allow ssh traffic", "type" = "ingress", "from_port" = "22", "to_port" = "22", "protocol" = "tcp" },
    { "description" = "Allow rdp traffic", "type" = "ingress", "from_port" = "3389", "to_port" = "3389", "protocol" = "tcp" },
  ]
}

variable "smd_admin_cluster_ip_list" {
  description = "smd_admin_cluster_hosts"
  default = ["13.230.212.149/32",
    "13.228.138.244/32",
    "34.245.251.227/32",
    "54.189.243.101/32",
    "18.233.132.94/32",
  ]
}

variable "smd_admin_cluster_sg_rules" {
  description = "SG rules for dev teams"
  default = [
    { "description" = "Allow http traffic", "type" = "ingress", "from_port" = "80", "to_port" = "80", "protocol" = "tcp" },
    { "description" = "Allow http traffic", "type" = "ingress", "from_port" = "8080", "to_port" = "8080", "protocol" = "tcp" },
    { "description" = "Allow https traffic", "type" = "ingress", "from_port" = "443", "to_port" = "443", "protocol" = "tcp" },
    { "description" = "Allow https traffic", "type" = "ingress", "from_port" = "8443", "to_port" = "8443", "protocol" = "tcp" },
    { "description" = "Allow ssh traffic", "type" = "ingress", "from_port" = "22", "to_port" = "22", "protocol" = "tcp" },
    { "description" = "Allow rdp traffic", "type" = "ingress", "from_port" = "3389", "to_port" = "3389", "protocol" = "tcp" },
  ]
}
