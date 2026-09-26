#
# Copyright (C) 2013 The Android Open-Source Project
#
# Licensed under the Apache License, Version 2.0
#

INTERNAL_MTK_BOOTIMAGE_ARGS := \
		--kernel $(INSTALLED_KERNEL_TARGET) \
		--ramdisk $(INSTALLED_RAMDISK_TARGET) \
		--mtk boot

$(INSTALLED_BOOTIMAGE_TARGET): $(MKBOOTIMG) \
		$(INSTALLED_RAMDISK_TARGET) $(INSTALLED_KERNEL_TARGET)
	$(call pretty,"Target boot image: $@")
	$(MKBOOTIMG) $(INTERNAL_MTK_BOOTIMAGE_ARGS) $(BOARD_MKBOOTIMG_ARGS) \
		--output $@
	$(hide) $(call assert-max-image-size,$@, \
		$(BOARD_BOOTIMAGE_PARTITION_SIZE),raw)
	@echo -e ${CL_CYN}"Made boot image: $@"${CL_RST}

INTERNAL_MTK_RECOVERYIMAGE_ARGS := \
		--kernel $(recovery_kernel) \
		--ramdisk $(recovery_ramdisk) \
		--mtk recovery

$(INSTALLED_RECOVERYIMAGE_TARGET): $(MKBOOTIMG) \
		$(recovery_ramdisk) $(recovery_kernel)
	@echo -e ${CL_CYN}"----- Making recovery image ------"${CL_RST}
	$(MKBOOTIMG) $(INTERNAL_MTK_RECOVERYIMAGE_ARGS) \
		$(BOARD_MKBOOTIMG_ARGS) --output $@
	$(hide) $(call assert-max-image-size,$@, \
		$(BOARD_RECOVERYIMAGE_PARTITION_SIZE),raw)
	@echo -e ${CL_CYN}"Made recovery image: $@"${CL_RST}
