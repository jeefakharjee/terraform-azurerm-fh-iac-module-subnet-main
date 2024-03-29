variable "subnet_name" {
  description = "Subnet name used in naming"
  type        = string
}

variable "resource_group_name" {
  description = "Resource group name"
  type        = string
}

variable "virtual_network_name" {
  description = "Virtual network name"
  type        = string
}

variable "subnet_cidr_list" {
  description = "The address prefix list to use for the subnet."
  type        = list(string)
}

variable "service_endpoints" {
  description = "The list of Service endpoints to associate with the subnet."
  type        = list(string)
  default     = []
}

variable "service_endpoint_policy_ids" {
  description = "The list of IDs of Service Endpoint Policies to associate with the subnet."
  type        = list(string)
  default     = null
}

variable "subnet_delegation" {
  description = <<EOD
Configuration delegations on subnet
object({
  name = object({
    name = string,
    actions = list(string)
  })
})
EOD
  type        = map(list(any))
  default     = {}
}

variable "private_link_endpoint_enabled" {
  description = "Enable or disable network policies for the Private Endpoint on the subnet."
  type        = bool
  default     = false
}

variable "private_link_service_enabled" {
  description = "Enable or disable network policies for the Private Link Service on the subnet."
  type        = bool
  default     = true
}

#variable "network_security_group_id" {
#  description = "Virtual network id"
#  type        = string
#  default     = null
#}

#variable "route_table_id" {
#  description = "Route Table Id"
#  type        = string
#  default     = null
#}

#variable "route_table_name" {
#  description = "The Route Table name to associate with the subnet."
#  type        = string
#  default     = null
#}

#variable "route_table_rg" {
#  description = "The Route Table RG to associate with the subnet. Default is the same RG than the subnet."
#  type        = string
#  default     = null
#}

#variable "network_security_group_name" {
#  description = "The Network Security Group name to associate with the subnets."
#  type        = string
#  default     = null
#}

#variable "network_security_group_rg" {
#  description = "The Network Security Group RG to associate with the subnet. Default is the same RG than the subnet."
#  type        = string
#  default     = null
#}