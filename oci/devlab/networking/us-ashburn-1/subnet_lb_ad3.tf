
resource "oci_core_subnet" "subnet_lb_ad3" {
    #Required
    cidr_block = "${var.subnet_lb_cidr_block_ad3}"
    compartment_id = "${var.compartment_ocid}"
    availability_domain = "${lookup(data.oci_identity_availability_domains.ADs.availability_domains[0],"name")}"

    vcn_id = "${oci_core_vcn.vcn_lb.id}"

    #Optional
    display_name = "${var.subnet_lb_display_name_ad3}"
    dns_label = "${var.subnet_dns_label_ad3}"
    freeform_tags = { env = "dev" scope="devlab_subnet" project = "beta" }
}



