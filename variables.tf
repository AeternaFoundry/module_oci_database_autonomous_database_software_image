variable "database_autonomous_database_software_images" {
  description = <<EOT
Map of database_autonomous_database_software_images, attributes below
Required:
    - compartment_id
    - display_name
    - image_shape_family
    - source_cdb_id
Optional:
    - defined_tags
    - freeform_tags
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    compartment_id     = string
    display_name       = string
    image_shape_family = string
    source_cdb_id      = string
    defined_tags       = optional(map(string))
    freeform_tags      = optional(map(string))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

