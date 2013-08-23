# Boot animation
TARGET_SCREEN_HEIGHT := 480
TARGET_SCREEN_WIDTH  := 800

# Include GSM stuff
$(call inherit-product, vendor/cm/config/gsm.mk)

DEVICE_PACKAGE_OVERLAYS += device/lge/vee7/overlay

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/lge/vee7/vee7.mk)

# Product name
PRODUCT_NAME := cm_vee7
PRODUCT_BRAND := lge
PRODUCT_DEVICE := vee7
PRODUCT_MODEL := LG-P715
PRODUCT_MANUFACTURER := LGE
