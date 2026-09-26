# Device configuration for Gamma GA-TAB7V3G
# MT6572 / W706

LOCAL_PATH := device/gamma/ga_tab7v3g

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio_policy.conf:system/etc/audio_policy.conf

# Permissions
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml

# Init
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/init.mt6572.rc:root/init.mt6572.rc

# Media
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/media_codecs.xml:system/etc/media_codecs.xml

# Hardware features
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml
