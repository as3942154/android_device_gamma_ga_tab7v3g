#
# Copyright (C) 2026 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0
#

LOCAL_PATH := $(call my-dir)

# Use the stock W706 kernel as a prebuilt kernel.
ifeq ($(TARGET_PREBUILT_KERNEL),)
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/kernel
endif

# Install the prebuilt kernel as the target kernel.
file := $(INSTALLED_KERNEL_TARGET)

ALL_PREBUILT += $(file)

$(file): $(TARGET_PREBUILT_KERNEL) | $(ACP)
	$(transform-prebuilt-to-target)

# Include the non-open-source vendor counterpart, if present.
-include vendor/gamma/ga_tab7v3g/AndroidBoardVendor.mk
