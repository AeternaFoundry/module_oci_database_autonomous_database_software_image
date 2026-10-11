resource "oci_database_autonomous_database_software_image" "database_autonomous_database_software_images" {
  for_each = var.database_autonomous_database_software_images

  compartment_id     = each.value.compartment_id
  display_name       = each.value.display_name
  image_shape_family = each.value.image_shape_family
  source_cdb_id      = each.value.source_cdb_id
  defined_tags       = each.value.defined_tags
  freeform_tags      = each.value.freeform_tags

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

