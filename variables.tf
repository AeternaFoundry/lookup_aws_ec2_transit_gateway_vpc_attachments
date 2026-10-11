variable "ec2_transit_gateway_vpc_attachments_lookup" {
  description = <<EOT
Map of ec2_transit_gateway_vpc_attachments_lookup, attributes below
Optional:
    - region
    - filter (block):
        - name (required)
        - values (required)
EOT

  type = map(object({
    region = optional(string)
    filter = optional(list(object({
      name   = string
      values = set(string)
    })))
  }))
}

