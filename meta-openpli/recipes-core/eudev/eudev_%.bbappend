FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

DEPENDS += " udev-extraconf"
RDEPENDS_${PN} += " udev-extraconf"

SRC_URI += " file://98-dbox-devices.rules"

do_install_append() {
	install -d "${D}${base_libdir}/udev/rules.d"
	install -m 0644 "${WORKDIR}/98-dbox-devices.rules" "${D}${base_libdir}/udev/rules.d"
}

FILES_${PN} += " ${sysconfdir}/udev/rules.d/98-dbox-devices.rules "
