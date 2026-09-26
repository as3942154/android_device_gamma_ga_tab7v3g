#
# Release name
PRODUCT_RELEASE_NAME := GA-TAB7V3G

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/gamma/ga_tab7v3g/device_ga_tab7v3g.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := ga_tab7v3g
PRODUCT_NAME := cm_ga_tab7v3g
PRODUCT_BRAND := Gamma
PRODUCT_MODEL := GA-TAB7V3G
PRODUCT_MANUFACTURER := Gamma
