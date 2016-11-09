#!/usr/bin/env bash

${CROSS_COMPILE}objcopy --change-addresses 0x08000000 -O srec -I binary ${BINARIES_DIR}/u-boot.imx ${BINARIES_DIR}/u-boot.imx.srec

${CROSS_COMPILE}objcopy --change-addresses 0x08F00000 -O srec -I binary ${BINARIES_DIR}/imx6dl-arb2.dtb ${BINARIES_DIR}/imx6dl-arb2.dtb.srec

${CROSS_COMPILE}objcopy --change-addresses 0x09000000 -O srec -I binary ${BINARIES_DIR}/zImage ${BINARIES_DIR}/zImage.srec
