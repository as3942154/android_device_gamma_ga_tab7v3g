#
# Copyright (C) 2026 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0
#

# Base telephony product
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Device path
LOCAL_PATH := device/gamma/ga_tab7v3g

# Product characteristics
PRODUCT_CHARACTERISTICS := default

# Device overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Vendor configuration, when available
$(call inherit-product-if-exists, vendor/gamma/ga_tab7v3g/ga_tab7v3g-vendor.mk)

# Device identity
PRODUCT_NAME := full_ga_tab7v3g
PRODUCT_DEVICE := ga_tab7v3g
PRODUCT_BRAND := Gamma
PRODUCT_MODEL := GA-TAB7V3G
PRODUCT_MANUFACTURER := Gamma

# Display
TARGET_SCREEN_WIDTH := 600
TARGET_SCREEN_HEIGHT := 1024

$(call inherit-product, device/gamma/ga_tab7v3g/device.mk)
