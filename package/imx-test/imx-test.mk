################################################################################
#
# imx-test
#
################################################################################

IMX_TEST_VERSION = 5.7
IMX_TEST_SOURCE = imx-test-$(IMX_TEST_VERSION).tar.gz
IMX_TEST_SITE = http://www.nxp.com/lgfiles/NMG/MAD/YOCTO
IMX_TEST_LICENSE = GPLv2
IMX_TEST_LICENSE_FILES = COPYING

define IMX_TEST_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)
endef

define IMX_TEST_INSTALL_TARGET_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D) \
		DESTDIR=$(TARGET_DIR)/usr/bin/imx-test install
endef

$(eval $(generic-package))
