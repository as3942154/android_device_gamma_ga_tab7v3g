#
# Copyright (C) 2026 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0
#

LOCAL_PATH := device/gamma/ga_tab7v3g

# Device overlay
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay

# Init configuration
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/etc/init.d/00banner:system/etc/init.d/00banner

# Key configuration
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/permissions/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml

# Recovery fstab
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery.fstab:root/recovery.fstab

# Device-specific properties
TARGET_SYSTEM_PROP := $(LOCAL_PATH)/system.prop

# MTK hardware
PRODUCT_PROPERTY_OVERRIDES += \
    ro.hardware.mt8312c=mt8312c

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio_policy.conf:system/etc/audio_policy.conf
