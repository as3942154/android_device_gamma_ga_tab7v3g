#
# Copyright (C) 2026 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0
#

LOCAL_PATH := device/gamma/ga_tab7v3g

# Device overlay
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay

# Device-specific properties
TARGET_SYSTEM_PROP := $(LOCAL_PATH)/system.prop
