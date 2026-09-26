LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

ALL_PREBUILT += $(INSTALLED_KERNEL_TARGET)

# Include the non-open-source vendor counterpart, if present.
-include vendor/gamma/ga_tab7v3g/AndroidBoardVendor.mk
